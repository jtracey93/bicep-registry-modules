targetScope = 'subscription'

metadata name = 'Standard'
metadata description = 'This instance deploys the module using the Standard_v2 sku.'

// ========== //
// Parameters //
// ========== //

@description('Optional. The name of the resource group to deploy for testing purposes.')
@maxLength(90)
param resourceGroupName string = 'dep-${namePrefix}-network.applicationgateways-${serviceShort}-rg'

@description('Optional. The location to deploy resources to.')
param resourceLocation string = deployment().location

@description('Optional. A short identifier for the kind of deployment. Should be kept short to not run into resource-name length-constraints.')
param serviceShort string = 'nagstd'

@description('Optional. Enable telemetry via a Globally Unique Identifier (GUID).')
param enableTelemetry bool = true

@description('Generated. Used as a basis for unique resource names.')
param baseTime string = utcNow('u')

@description('Optional. A token to inject into the name of each resource.')
param namePrefix string = '#_namePrefix_#'

// ============ //
// Dependencies //
// ============ //

// General resources
// =================
resource resourceGroup 'Microsoft.Resources/resourceGroups@2024-11-01' = {
  name: resourceGroupName
  location: resourceLocation
}

module nestedDependencies 'dependencies.bicep' = {
  scope: resourceGroup
  name: '${uniqueString(deployment().name, resourceLocation)}-nestedDependencies'
  params: {
    location: resourceLocation
    virtualNetworkName: 'dep-${namePrefix}-vnet-${serviceShort}'
    publicIPName: 'dep-${namePrefix}-pip-${serviceShort}'
    managedIdentityName: 'dep-${namePrefix}-msi-${serviceShort}'
    certDeploymentScriptName: 'dep-${namePrefix}-ds-${serviceShort}'
    keyVaultName: 'dep-${namePrefix}-kv-${serviceShort}-${substring(uniqueString(baseTime), 0, 3)}'
  }
}

// ============== //
// Test Execution //
// ============== //

var appGWName = '${namePrefix}${serviceShort}001'
var appGWExpectedResourceID = '${resourceGroup.id}/providers/Microsoft.Network/applicationGateways/${appGWName}'
@batchSize(1)
module testDeployment '../../../main.bicep' = [
  for iteration in ['init', 'idem']: {
    scope: resourceGroup
    name: '${uniqueString(deployment().name, resourceLocation)}-test-${serviceShort}-${iteration}'
    params: {
      location: resourceLocation
      enableTelemetry: enableTelemetry
      name: appGWName
      backendAddressPools: [
        {
          name: 'appServiceBackendPool'
          properties: {
            backendAddresses: [
              {
                fqdn: 'aghapp.azurewebsites.net'
              }
            ]
          }
        }
      ]
      backendHttpSettingsCollection: [
        {
          name: 'appServiceBackendHttpsSetting'
          properties: {
            cookieBasedAffinity: 'Disabled'
            pickHostNameFromBackendAddress: true
            port: 443
            protocol: 'Https'
            requestTimeout: 30
          }
        }
      ]
      enableHttp2: true
      frontendIPConfigurations: [
        {
          name: 'public'
          properties: {
            privateIPAllocationMethod: 'Dynamic'
            publicIPAddress: {
              id: nestedDependencies.outputs.publicIPResourceId
            }
          }
        }
      ]
      frontendPorts: [
        {
          name: 'port443'
          properties: {
            port: 443
          }
        }
        {
          name: 'port80'
          properties: {
            port: 80
          }
        }
      ]
      gatewayIPConfigurations: [
        {
          name: 'apw-ip-configuration'
          properties: {
            subnet: {
              id: nestedDependencies.outputs.defaultSubnetResourceId
            }
          }
        }
      ]
      httpListeners: [
        {
          name: 'public443'
          properties: {
            frontendIPConfiguration: {
              id: '${appGWExpectedResourceID}/frontendIPConfigurations/public'
            }
            frontendPort: {
              id: '${appGWExpectedResourceID}/frontendPorts/port443'
            }
            hostNames: []
            protocol: 'https'
            requireServerNameIndication: false
            sslCertificate: {
              id: '${appGWExpectedResourceID}/sslCertificates/${namePrefix}-az-apgw-x-001-ssl-certificate'
            }
          }
        }
        {
          name: 'httpRedirect80'
          properties: {
            frontendIPConfiguration: {
              id: '${appGWExpectedResourceID}/frontendIPConfigurations/public'
            }
            frontendPort: {
              id: '${appGWExpectedResourceID}/frontendPorts/port80'
            }
            hostNames: []
            protocol: 'Http'
            requireServerNameIndication: false
          }
        }
      ]
      redirectConfigurations: [
        {
          name: 'httpRedirect80'
          properties: {
            includePath: true
            includeQueryString: true
            redirectType: 'Permanent'
            requestRoutingRules: [
              {
                id: '${appGWExpectedResourceID}/requestRoutingRules/httpRedirect80-public443'
              }
            ]
            targetListener: {
              id: '${appGWExpectedResourceID}/httpListeners/public443'
            }
          }
        }
      ]
      requestRoutingRules: [
        {
          name: 'public443-appServiceBackendHttpsSetting-appServiceBackendHttpsSetting'
          properties: {
            backendAddressPool: {
              id: '${appGWExpectedResourceID}/backendAddressPools/appServiceBackendPool'
            }
            backendHttpSettings: {
              id: '${appGWExpectedResourceID}/backendHttpSettingsCollection/appServiceBackendHttpsSetting'
            }
            httpListener: {
              id: '${appGWExpectedResourceID}/httpListeners/public443'
            }
            priority: 200
            ruleType: 'Basic'
          }
        }
        {
          name: 'httpRedirect80-public443'
          properties: {
            httpListener: {
              id: '${appGWExpectedResourceID}/httpListeners/httpRedirect80'
            }
            priority: 300
            redirectConfiguration: {
              id: '${appGWExpectedResourceID}/redirectConfigurations/httpRedirect80'
            }
            ruleType: 'Basic'
          }
        }
      ]
      sku: 'Standard_v2'
      sslCertificates: [
        {
          name: '${namePrefix}-az-apgw-x-001-ssl-certificate'
          properties: {
            keyVaultSecretId: nestedDependencies.outputs.certificateSecretUrl
          }
        }
      ]
      managedIdentities: {
        userAssignedResourceIds: [
          nestedDependencies.outputs.managedIdentityResourceId
        ]
      }
      rewriteRuleSets: [
        {
          name: 'customRewrite'
          id: '${appGWExpectedResourceID}/rewriteRuleSets/customRewrite'
          properties: {
            rewriteRules: [
              {
                ruleSequence: 100
                conditions: []
                name: 'NewRewrite'
                actionSet: {
                  requestHeaderConfigurations: [
                    {
                      headerName: 'Content-Type'
                      headerValue: 'JSON'
                    }
                    {
                      headerName: 'someheader'
                    }
                  ]
                  responseHeaderConfigurations: []
                }
              }
            ]
          }
        }
      ]
      tags: {
        'hidden-title': 'This is visible in the resource name'
        Environment: 'Non-Prod'
        Role: 'DeploymentValidation'
      }
    }
  }
]
