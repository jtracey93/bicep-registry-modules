targetScope = 'subscription'

metadata name = 'With EC key type'
metadata description = 'This instance deploys the module with the parameters needed for an EC key.'

// ========== //
// Parameters //
// ========== //

@description('Optional. The name of the resource group to deploy for testing purposes.')
@maxLength(90)
param resourceGroupName string = 'dep-${namePrefix}-keyvault.vaults-${serviceShort}-rg'

@description('Optional. The location to deploy resources to.')
param resourceLocation string = deployment().location

@description('Optional. A short identifier for the kind of deployment. Should be kept short to not run into resource-name length-constraints.')
param serviceShort string = 'kvvec'

@description('Optional. A token to inject into the name of each resource. This value can be automatically injected by the CI.')
param namePrefix string = '#_namePrefix_#'

// ============ //
// Dependencies //
// ============ //

// General resources
// =================
resource resourceGroup 'Microsoft.Resources/resourceGroups@2025-04-01' = {
  name: resourceGroupName
  location: resourceLocation
}

// ============== //
// Test Execution //
// ============== //

@batchSize(1)
module testDeployment '../../../main.bicep' = [
  for iteration in ['init', 'idem']: {
    scope: resourceGroup
    name: '${uniqueString(deployment().name, resourceLocation)}-test-${serviceShort}-${iteration}'
    params: {
      name: '${namePrefix}${serviceShort}002'
      // Only for testing purposes
      enablePurgeProtection: false
      enableRbacAuthorization: true
      keys: [
        {
          attributes: {
            exp: 1725109032
            nbf: 10000
          }
          name: 'keyName'
          kty: 'EC'
          rotationPolicy: {
            attributes: {
              expiryTime: 'P2Y'
            }
            lifetimeActions: [
              {
                trigger: {
                  timeBeforeExpiry: 'P2M'
                }
                action: {
                  type: 'rotate'
                }
              }
              {
                trigger: {
                  timeBeforeExpiry: 'P30D'
                }
                action: {
                  type: 'notify'
                }
              }
            ]
          }
        }
      ]
    }
  }
]
