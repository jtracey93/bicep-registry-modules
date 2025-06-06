# Container Apps Landing Zone Accelerator `[AcaLza/HostingEnvironment]`

This Azure Container Apps pattern module represents an Azure Container Apps deployment aligned with the cloud adoption framework

## Navigation

- [Resource Types](#Resource-Types)
- [Usage examples](#Usage-examples)
- [Parameters](#Parameters)
- [Outputs](#Outputs)
- [Cross-referenced modules](#Cross-referenced-modules)
- [Data Collection](#Data-Collection)

## Resource Types

| Resource Type | API Version |
| :-- | :-- |
| `Microsoft.App/containerApps` | [2024-10-02-preview](https://learn.microsoft.com/en-us/azure/templates/Microsoft.App/2024-10-02-preview/containerApps) |
| `Microsoft.App/managedEnvironments` | [2024-02-02-preview](https://learn.microsoft.com/en-us/azure/templates/Microsoft.App/2024-02-02-preview/managedEnvironments) |
| `Microsoft.App/managedEnvironments/storages` | [2024-02-02-preview](https://learn.microsoft.com/en-us/azure/templates/Microsoft.App/2024-02-02-preview/managedEnvironments/storages) |
| `Microsoft.Authorization/locks` | [2020-05-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Authorization/2020-05-01/locks) |
| `Microsoft.Authorization/roleAssignments` | [2022-04-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Authorization/2022-04-01/roleAssignments) |
| `Microsoft.Automanage/configurationProfileAssignments` | [2022-05-04](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Automanage/2022-05-04/configurationProfileAssignments) |
| `Microsoft.Compute/disks` | [2024-03-02](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Compute/2024-03-02/disks) |
| `Microsoft.Compute/sshPublicKeys` | [2024-07-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Compute/2024-07-01/sshPublicKeys) |
| `Microsoft.Compute/virtualMachines` | [2024-07-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Compute/2024-07-01/virtualMachines) |
| `Microsoft.Compute/virtualMachines/extensions` | [2022-11-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Compute/2022-11-01/virtualMachines/extensions) |
| `Microsoft.ContainerRegistry/registries` | [2023-06-01-preview](https://learn.microsoft.com/en-us/azure/templates/Microsoft.ContainerRegistry/2023-06-01-preview/registries) |
| `Microsoft.ContainerRegistry/registries/agentPools` | [2019-06-01-preview](https://learn.microsoft.com/en-us/azure/templates/Microsoft.ContainerRegistry/2019-06-01-preview/registries/agentPools) |
| `Microsoft.ContainerRegistry/registries/cacheRules` | [2023-06-01-preview](https://learn.microsoft.com/en-us/azure/templates/Microsoft.ContainerRegistry/2023-06-01-preview/registries/cacheRules) |
| `Microsoft.ContainerRegistry/registries/credentialSets` | [2023-11-01-preview](https://learn.microsoft.com/en-us/azure/templates/Microsoft.ContainerRegistry/2023-11-01-preview/registries/credentialSets) |
| `Microsoft.ContainerRegistry/registries/replications` | [2023-06-01-preview](https://learn.microsoft.com/en-us/azure/templates/Microsoft.ContainerRegistry/2023-06-01-preview/registries/replications) |
| `Microsoft.ContainerRegistry/registries/scopeMaps` | [2023-06-01-preview](https://learn.microsoft.com/en-us/azure/templates/Microsoft.ContainerRegistry/2023-06-01-preview/registries/scopeMaps) |
| `Microsoft.ContainerRegistry/registries/webhooks` | [2023-06-01-preview](https://learn.microsoft.com/en-us/azure/templates/Microsoft.ContainerRegistry/2023-06-01-preview/registries/webhooks) |
| `Microsoft.DevTestLab/schedules` | [2018-09-15](https://learn.microsoft.com/en-us/azure/templates/Microsoft.DevTestLab/2018-09-15/schedules) |
| `Microsoft.GuestConfiguration/guestConfigurationAssignments` | [2020-06-25](https://learn.microsoft.com/en-us/azure/templates/Microsoft.GuestConfiguration/2020-06-25/guestConfigurationAssignments) |
| `Microsoft.Insights/components` | [2020-02-02](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Insights/2020-02-02/components) |
| `microsoft.insights/components/linkedStorageAccounts` | [2020-03-01-preview](https://learn.microsoft.com/en-us/azure/templates/microsoft.insights/2020-03-01-preview/components/linkedStorageAccounts) |
| `Microsoft.Insights/dataCollectionRuleAssociations` | [2023-03-11](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Insights/2023-03-11/dataCollectionRuleAssociations) |
| `Microsoft.Insights/dataCollectionRules` | [2023-03-11](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Insights/2023-03-11/dataCollectionRules) |
| `Microsoft.Insights/diagnosticSettings` | [2021-05-01-preview](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Insights/2021-05-01-preview/diagnosticSettings) |
| `Microsoft.KeyVault/vaults` | [2022-07-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.KeyVault/2022-07-01/vaults) |
| `Microsoft.KeyVault/vaults/accessPolicies` | [2022-07-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.KeyVault/2022-07-01/vaults/accessPolicies) |
| `Microsoft.KeyVault/vaults/keys` | [2022-07-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.KeyVault/2022-07-01/vaults/keys) |
| `Microsoft.KeyVault/vaults/secrets` | [2023-07-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.KeyVault/2023-07-01/vaults/secrets) |
| `Microsoft.KeyVault/vaults/secrets` | [2024-04-01-preview](https://learn.microsoft.com/en-us/azure/templates/Microsoft.KeyVault/2024-04-01-preview/vaults/secrets) |
| `Microsoft.KeyVault/vaults/secrets` | [2022-07-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.KeyVault/2022-07-01/vaults/secrets) |
| `Microsoft.Maintenance/configurationAssignments` | [2023-04-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Maintenance/2023-04-01/configurationAssignments) |
| `Microsoft.Maintenance/maintenanceConfigurations` | [2023-10-01-preview](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Maintenance/2023-10-01-preview/maintenanceConfigurations) |
| `Microsoft.ManagedIdentity/userAssignedIdentities` | [2023-07-31-preview](https://learn.microsoft.com/en-us/azure/templates/Microsoft.ManagedIdentity/2023-07-31-preview/userAssignedIdentities) |
| `Microsoft.ManagedIdentity/userAssignedIdentities` | [2023-01-31](https://learn.microsoft.com/en-us/azure/templates/Microsoft.ManagedIdentity/2023-01-31/userAssignedIdentities) |
| `Microsoft.ManagedIdentity/userAssignedIdentities/federatedIdentityCredentials` | [2023-01-31](https://learn.microsoft.com/en-us/azure/templates/Microsoft.ManagedIdentity/2023-01-31/userAssignedIdentities/federatedIdentityCredentials) |
| `Microsoft.Network/applicationGateways` | [2024-05-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Network/2024-05-01/applicationGateways) |
| `Microsoft.Network/ApplicationGatewayWebApplicationFirewallPolicies` | [2024-03-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Network/2024-03-01/ApplicationGatewayWebApplicationFirewallPolicies) |
| `Microsoft.Network/networkInterfaces` | [2023-04-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Network/2023-04-01/networkInterfaces) |
| `Microsoft.Network/networkSecurityGroups` | [2023-11-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Network/2023-11-01/networkSecurityGroups) |
| `Microsoft.Network/privateDnsZones` | [2020-06-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Network/2020-06-01/privateDnsZones) |
| `Microsoft.Network/privateDnsZones/A` | [2020-06-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Network/2020-06-01/privateDnsZones/A) |
| `Microsoft.Network/privateDnsZones/AAAA` | [2020-06-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Network/2020-06-01/privateDnsZones/AAAA) |
| `Microsoft.Network/privateDnsZones/CNAME` | [2020-06-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Network/2020-06-01/privateDnsZones/CNAME) |
| `Microsoft.Network/privateDnsZones/MX` | [2020-06-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Network/2020-06-01/privateDnsZones/MX) |
| `Microsoft.Network/privateDnsZones/PTR` | [2020-06-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Network/2020-06-01/privateDnsZones/PTR) |
| `Microsoft.Network/privateDnsZones/SOA` | [2020-06-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Network/2020-06-01/privateDnsZones/SOA) |
| `Microsoft.Network/privateDnsZones/SRV` | [2020-06-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Network/2020-06-01/privateDnsZones/SRV) |
| `Microsoft.Network/privateDnsZones/TXT` | [2020-06-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Network/2020-06-01/privateDnsZones/TXT) |
| `Microsoft.Network/privateDnsZones/virtualNetworkLinks` | [2024-06-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Network/2024-06-01/privateDnsZones/virtualNetworkLinks) |
| `Microsoft.Network/privateEndpoints` | [2023-11-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Network/2023-11-01/privateEndpoints) |
| `Microsoft.Network/privateEndpoints/privateDnsZoneGroups` | [2023-11-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Network/2023-11-01/privateEndpoints/privateDnsZoneGroups) |
| `Microsoft.Network/publicIPAddresses` | [2023-09-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Network/2023-09-01/publicIPAddresses) |
| `Microsoft.Network/routeTables` | [2023-04-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Network/2023-04-01/routeTables) |
| `Microsoft.Network/virtualNetworks` | [2024-01-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Network/2024-01-01/virtualNetworks) |
| `Microsoft.Network/virtualNetworks/subnets` | [2024-01-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Network/2024-01-01/virtualNetworks/subnets) |
| `Microsoft.Network/virtualNetworks/subnets` | [2024-05-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Network/2024-05-01/virtualNetworks/subnets) |
| `Microsoft.Network/virtualNetworks/virtualNetworkPeerings` | [2024-01-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Network/2024-01-01/virtualNetworks/virtualNetworkPeerings) |
| `Microsoft.OperationalInsights/workspaces` | [2025-02-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.OperationalInsights/2025-02-01/workspaces) |
| `Microsoft.RecoveryServices/vaults/backupFabrics/protectionContainers/protectedItems` | [2023-01-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.RecoveryServices/2023-01-01/vaults/backupFabrics/protectionContainers/protectedItems) |
| `Microsoft.Resources/deploymentScripts` | [2023-08-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Resources/2023-08-01/deploymentScripts) |
| `Microsoft.Resources/resourceGroups` | [2021-04-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Resources/2021-04-01/resourceGroups) |
| `Microsoft.Storage/storageAccounts` | [2023-05-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Storage/2023-05-01/storageAccounts) |
| `Microsoft.Storage/storageAccounts/blobServices` | [2022-09-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Storage/2022-09-01/storageAccounts/blobServices) |
| `Microsoft.Storage/storageAccounts/blobServices/containers` | [2022-09-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Storage/2022-09-01/storageAccounts/blobServices/containers) |
| `Microsoft.Storage/storageAccounts/blobServices/containers/immutabilityPolicies` | [2022-09-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Storage/2022-09-01/storageAccounts/blobServices/containers/immutabilityPolicies) |
| `Microsoft.Storage/storageAccounts/fileServices` | [2023-04-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Storage/2023-04-01/storageAccounts/fileServices) |
| `Microsoft.Storage/storageAccounts/fileServices/shares` | [2023-01-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Storage/2023-01-01/storageAccounts/fileServices/shares) |
| `Microsoft.Storage/storageAccounts/localUsers` | [2023-04-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Storage/2023-04-01/storageAccounts/localUsers) |
| `Microsoft.Storage/storageAccounts/managementPolicies` | [2023-01-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Storage/2023-01-01/storageAccounts/managementPolicies) |
| `Microsoft.Storage/storageAccounts/queueServices` | [2023-04-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Storage/2023-04-01/storageAccounts/queueServices) |
| `Microsoft.Storage/storageAccounts/queueServices/queues` | [2023-04-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Storage/2023-04-01/storageAccounts/queueServices/queues) |
| `Microsoft.Storage/storageAccounts/tableServices` | [2023-04-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Storage/2023-04-01/storageAccounts/tableServices) |
| `Microsoft.Storage/storageAccounts/tableServices/tables` | [2023-04-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Storage/2023-04-01/storageAccounts/tableServices/tables) |

## Usage examples

The following section provides usage examples for the module, which were used to validate and deploy the module successfully. For a full reference, please review the module's test folder in its repository.

>**Note**: Each example lists all the required parameters first, followed by the rest - each in alphabetical order.

>**Note**: To reference the module, please use the following syntax `br/public:avm/ptn/aca-lza/hosting-environment:<version>`.

- [Using only defaults.](#example-1-using-only-defaults)
- [Using a hub and spoke deployment.](#example-2-using-a-hub-and-spoke-deployment)
- [Using all the available options in WAF aligned values.](#example-3-using-all-the-available-options-in-waf-aligned-values)

### Example 1: _Using only defaults._

This instance deploys the module with the minimum set of required parameters.


<details>

<summary>via Bicep module</summary>

```bicep
module hostingEnvironment 'br/public:avm/ptn/aca-lza/hosting-environment:<version>' = {
  name: 'hostingEnvironmentDeployment'
  params: {
    // Required parameters
    applicationGatewayCertificateKeyName: '<applicationGatewayCertificateKeyName>'
    deploymentSubnetAddressPrefix: '10.1.4.0/24'
    enableApplicationInsights: true
    enableDaprInstrumentation: false
    spokeApplicationGatewaySubnetAddressPrefix: '10.1.3.0/24'
    spokeInfraSubnetAddressPrefix: '10.1.0.0/23'
    spokePrivateEndpointsSubnetAddressPrefix: '10.1.2.0/27'
    spokeVNetAddressPrefixes: [
      '10.1.0.0/21'
    ]
    vmAdminPassword: '<vmAdminPassword>'
    vmJumpBoxSubnetAddressPrefix: '10.1.2.32/27'
    vmSize: 'Standard_B1s'
    // Non-required parameters
    location: '<location>'
    tags: {
      environment: 'test'
    }
    vmAuthenticationType: 'sshPublicKey'
    vmJumpboxOSType: 'linux'
    workloadName: '<workloadName>'
  }
}
```

</details>
<p>

<details>

<summary>via JSON parameters file</summary>

```json
{
  "$schema": "https://schema.management.azure.com/schemas/2019-04-01/deploymentParameters.json#",
  "contentVersion": "1.0.0.0",
  "parameters": {
    // Required parameters
    "applicationGatewayCertificateKeyName": {
      "value": "<applicationGatewayCertificateKeyName>"
    },
    "deploymentSubnetAddressPrefix": {
      "value": "10.1.4.0/24"
    },
    "enableApplicationInsights": {
      "value": true
    },
    "enableDaprInstrumentation": {
      "value": false
    },
    "spokeApplicationGatewaySubnetAddressPrefix": {
      "value": "10.1.3.0/24"
    },
    "spokeInfraSubnetAddressPrefix": {
      "value": "10.1.0.0/23"
    },
    "spokePrivateEndpointsSubnetAddressPrefix": {
      "value": "10.1.2.0/27"
    },
    "spokeVNetAddressPrefixes": {
      "value": [
        "10.1.0.0/21"
      ]
    },
    "vmAdminPassword": {
      "value": "<vmAdminPassword>"
    },
    "vmJumpBoxSubnetAddressPrefix": {
      "value": "10.1.2.32/27"
    },
    "vmSize": {
      "value": "Standard_B1s"
    },
    // Non-required parameters
    "location": {
      "value": "<location>"
    },
    "tags": {
      "value": {
        "environment": "test"
      }
    },
    "vmAuthenticationType": {
      "value": "sshPublicKey"
    },
    "vmJumpboxOSType": {
      "value": "linux"
    },
    "workloadName": {
      "value": "<workloadName>"
    }
  }
}
```

</details>
<p>

<details>

<summary>via Bicep parameters file</summary>

```bicep-params
using 'br/public:avm/ptn/aca-lza/hosting-environment:<version>'

// Required parameters
param applicationGatewayCertificateKeyName = '<applicationGatewayCertificateKeyName>'
param deploymentSubnetAddressPrefix = '10.1.4.0/24'
param enableApplicationInsights = true
param enableDaprInstrumentation = false
param spokeApplicationGatewaySubnetAddressPrefix = '10.1.3.0/24'
param spokeInfraSubnetAddressPrefix = '10.1.0.0/23'
param spokePrivateEndpointsSubnetAddressPrefix = '10.1.2.0/27'
param spokeVNetAddressPrefixes = [
  '10.1.0.0/21'
]
param vmAdminPassword = '<vmAdminPassword>'
param vmJumpBoxSubnetAddressPrefix = '10.1.2.32/27'
param vmSize = 'Standard_B1s'
// Non-required parameters
param location = '<location>'
param tags = {
  environment: 'test'
}
param vmAuthenticationType = 'sshPublicKey'
param vmJumpboxOSType = 'linux'
param workloadName = '<workloadName>'
```

</details>
<p>

### Example 2: _Using a hub and spoke deployment._

This instance deploys the module including a Hub to peer to.


<details>

<summary>via Bicep module</summary>

```bicep
module hostingEnvironment 'br/public:avm/ptn/aca-lza/hosting-environment:<version>' = {
  name: 'hostingEnvironmentDeployment'
  params: {
    // Required parameters
    applicationGatewayCertificateKeyName: '<applicationGatewayCertificateKeyName>'
    deploymentSubnetAddressPrefix: '10.1.4.0/24'
    enableApplicationInsights: true
    enableDaprInstrumentation: false
    spokeApplicationGatewaySubnetAddressPrefix: '10.1.3.0/24'
    spokeInfraSubnetAddressPrefix: '10.1.0.0/23'
    spokePrivateEndpointsSubnetAddressPrefix: '10.1.2.0/27'
    spokeVNetAddressPrefixes: [
      '10.1.0.0/21'
    ]
    vmAdminPassword: '<vmAdminPassword>'
    vmJumpBoxSubnetAddressPrefix: '10.1.2.32/27'
    vmSize: 'Standard_B1s'
    // Non-required parameters
    deployZoneRedundantResources: true
    enableDdosProtection: true
    environment: 'dev'
    exposeContainerAppsWith: 'applicationGateway'
    hubVirtualNetworkResourceId: '<hubVirtualNetworkResourceId>'
    location: '<location>'
    networkApplianceIpAddress: '<networkApplianceIpAddress>'
    storageAccountType: 'Premium_LRS'
    tags: {
      environment: 'test'
    }
    vmAuthenticationType: 'sshPublicKey'
    vmJumpboxOSType: 'linux'
    workloadName: '<workloadName>'
  }
}
```

</details>
<p>

<details>

<summary>via JSON parameters file</summary>

```json
{
  "$schema": "https://schema.management.azure.com/schemas/2019-04-01/deploymentParameters.json#",
  "contentVersion": "1.0.0.0",
  "parameters": {
    // Required parameters
    "applicationGatewayCertificateKeyName": {
      "value": "<applicationGatewayCertificateKeyName>"
    },
    "deploymentSubnetAddressPrefix": {
      "value": "10.1.4.0/24"
    },
    "enableApplicationInsights": {
      "value": true
    },
    "enableDaprInstrumentation": {
      "value": false
    },
    "spokeApplicationGatewaySubnetAddressPrefix": {
      "value": "10.1.3.0/24"
    },
    "spokeInfraSubnetAddressPrefix": {
      "value": "10.1.0.0/23"
    },
    "spokePrivateEndpointsSubnetAddressPrefix": {
      "value": "10.1.2.0/27"
    },
    "spokeVNetAddressPrefixes": {
      "value": [
        "10.1.0.0/21"
      ]
    },
    "vmAdminPassword": {
      "value": "<vmAdminPassword>"
    },
    "vmJumpBoxSubnetAddressPrefix": {
      "value": "10.1.2.32/27"
    },
    "vmSize": {
      "value": "Standard_B1s"
    },
    // Non-required parameters
    "deployZoneRedundantResources": {
      "value": true
    },
    "enableDdosProtection": {
      "value": true
    },
    "environment": {
      "value": "dev"
    },
    "exposeContainerAppsWith": {
      "value": "applicationGateway"
    },
    "hubVirtualNetworkResourceId": {
      "value": "<hubVirtualNetworkResourceId>"
    },
    "location": {
      "value": "<location>"
    },
    "networkApplianceIpAddress": {
      "value": "<networkApplianceIpAddress>"
    },
    "storageAccountType": {
      "value": "Premium_LRS"
    },
    "tags": {
      "value": {
        "environment": "test"
      }
    },
    "vmAuthenticationType": {
      "value": "sshPublicKey"
    },
    "vmJumpboxOSType": {
      "value": "linux"
    },
    "workloadName": {
      "value": "<workloadName>"
    }
  }
}
```

</details>
<p>

<details>

<summary>via Bicep parameters file</summary>

```bicep-params
using 'br/public:avm/ptn/aca-lza/hosting-environment:<version>'

// Required parameters
param applicationGatewayCertificateKeyName = '<applicationGatewayCertificateKeyName>'
param deploymentSubnetAddressPrefix = '10.1.4.0/24'
param enableApplicationInsights = true
param enableDaprInstrumentation = false
param spokeApplicationGatewaySubnetAddressPrefix = '10.1.3.0/24'
param spokeInfraSubnetAddressPrefix = '10.1.0.0/23'
param spokePrivateEndpointsSubnetAddressPrefix = '10.1.2.0/27'
param spokeVNetAddressPrefixes = [
  '10.1.0.0/21'
]
param vmAdminPassword = '<vmAdminPassword>'
param vmJumpBoxSubnetAddressPrefix = '10.1.2.32/27'
param vmSize = 'Standard_B1s'
// Non-required parameters
param deployZoneRedundantResources = true
param enableDdosProtection = true
param environment = 'dev'
param exposeContainerAppsWith = 'applicationGateway'
param hubVirtualNetworkResourceId = '<hubVirtualNetworkResourceId>'
param location = '<location>'
param networkApplianceIpAddress = '<networkApplianceIpAddress>'
param storageAccountType = 'Premium_LRS'
param tags = {
  environment: 'test'
}
param vmAuthenticationType = 'sshPublicKey'
param vmJumpboxOSType = 'linux'
param workloadName = '<workloadName>'
```

</details>
<p>

### Example 3: _Using all the available options in WAF aligned values._

This instance deploys the module with the all the available parameters in WAF aligned values.


<details>

<summary>via Bicep module</summary>

```bicep
module hostingEnvironment 'br/public:avm/ptn/aca-lza/hosting-environment:<version>' = {
  name: 'hostingEnvironmentDeployment'
  params: {
    // Required parameters
    applicationGatewayCertificateKeyName: 'appgwcert'
    deploymentSubnetAddressPrefix: '10.1.4.0/24'
    enableApplicationInsights: true
    enableDaprInstrumentation: false
    spokeApplicationGatewaySubnetAddressPrefix: '10.1.3.0/24'
    spokeInfraSubnetAddressPrefix: '10.1.0.0/23'
    spokePrivateEndpointsSubnetAddressPrefix: '10.1.2.0/27'
    spokeVNetAddressPrefixes: [
      '10.1.0.0/21'
    ]
    vmAdminPassword: '<vmAdminPassword>'
    vmJumpBoxSubnetAddressPrefix: '10.1.2.32/27'
    vmSize: 'Standard_B1s'
    // Non-required parameters
    deployZoneRedundantResources: true
    enableDdosProtection: true
    environment: 'dev'
    exposeContainerAppsWith: 'applicationGateway'
    location: '<location>'
    storageAccountType: 'Premium_LRS'
    tags: {
      environment: 'test'
    }
    vmAuthenticationType: 'sshPublicKey'
    vmJumpboxOSType: 'linux'
    workloadName: '<workloadName>'
  }
}
```

</details>
<p>

<details>

<summary>via JSON parameters file</summary>

```json
{
  "$schema": "https://schema.management.azure.com/schemas/2019-04-01/deploymentParameters.json#",
  "contentVersion": "1.0.0.0",
  "parameters": {
    // Required parameters
    "applicationGatewayCertificateKeyName": {
      "value": "appgwcert"
    },
    "deploymentSubnetAddressPrefix": {
      "value": "10.1.4.0/24"
    },
    "enableApplicationInsights": {
      "value": true
    },
    "enableDaprInstrumentation": {
      "value": false
    },
    "spokeApplicationGatewaySubnetAddressPrefix": {
      "value": "10.1.3.0/24"
    },
    "spokeInfraSubnetAddressPrefix": {
      "value": "10.1.0.0/23"
    },
    "spokePrivateEndpointsSubnetAddressPrefix": {
      "value": "10.1.2.0/27"
    },
    "spokeVNetAddressPrefixes": {
      "value": [
        "10.1.0.0/21"
      ]
    },
    "vmAdminPassword": {
      "value": "<vmAdminPassword>"
    },
    "vmJumpBoxSubnetAddressPrefix": {
      "value": "10.1.2.32/27"
    },
    "vmSize": {
      "value": "Standard_B1s"
    },
    // Non-required parameters
    "deployZoneRedundantResources": {
      "value": true
    },
    "enableDdosProtection": {
      "value": true
    },
    "environment": {
      "value": "dev"
    },
    "exposeContainerAppsWith": {
      "value": "applicationGateway"
    },
    "location": {
      "value": "<location>"
    },
    "storageAccountType": {
      "value": "Premium_LRS"
    },
    "tags": {
      "value": {
        "environment": "test"
      }
    },
    "vmAuthenticationType": {
      "value": "sshPublicKey"
    },
    "vmJumpboxOSType": {
      "value": "linux"
    },
    "workloadName": {
      "value": "<workloadName>"
    }
  }
}
```

</details>
<p>

<details>

<summary>via Bicep parameters file</summary>

```bicep-params
using 'br/public:avm/ptn/aca-lza/hosting-environment:<version>'

// Required parameters
param applicationGatewayCertificateKeyName = 'appgwcert'
param deploymentSubnetAddressPrefix = '10.1.4.0/24'
param enableApplicationInsights = true
param enableDaprInstrumentation = false
param spokeApplicationGatewaySubnetAddressPrefix = '10.1.3.0/24'
param spokeInfraSubnetAddressPrefix = '10.1.0.0/23'
param spokePrivateEndpointsSubnetAddressPrefix = '10.1.2.0/27'
param spokeVNetAddressPrefixes = [
  '10.1.0.0/21'
]
param vmAdminPassword = '<vmAdminPassword>'
param vmJumpBoxSubnetAddressPrefix = '10.1.2.32/27'
param vmSize = 'Standard_B1s'
// Non-required parameters
param deployZoneRedundantResources = true
param enableDdosProtection = true
param environment = 'dev'
param exposeContainerAppsWith = 'applicationGateway'
param location = '<location>'
param storageAccountType = 'Premium_LRS'
param tags = {
  environment: 'test'
}
param vmAuthenticationType = 'sshPublicKey'
param vmJumpboxOSType = 'linux'
param workloadName = '<workloadName>'
```

</details>
<p>

## Parameters

**Required parameters**

| Parameter | Type | Description |
| :-- | :-- | :-- |
| [`applicationGatewayCertificateKeyName`](#parameter-applicationgatewaycertificatekeyname) | string | The name of the certificate key to use for Application Gateway certificate. |
| [`deploymentSubnetAddressPrefix`](#parameter-deploymentsubnetaddressprefix) | string | The CIDR to use for Deployment scripts subnet. |
| [`enableApplicationInsights`](#parameter-enableapplicationinsights) | bool | Enable or disable the createion of Application Insights. |
| [`enableDaprInstrumentation`](#parameter-enabledaprinstrumentation) | bool | Enable or disable Dapr Application Instrumentation Key used for Dapr telemetry. If Application Insights is not enabled, this parameter is ignored. |
| [`spokeApplicationGatewaySubnetAddressPrefix`](#parameter-spokeapplicationgatewaysubnetaddressprefix) | string | CIDR of the Spoke Application Gateway Subnet. |
| [`spokeInfraSubnetAddressPrefix`](#parameter-spokeinfrasubnetaddressprefix) | string | CIDR of the Spoke Infrastructure Subnet. |
| [`spokePrivateEndpointsSubnetAddressPrefix`](#parameter-spokeprivateendpointssubnetaddressprefix) | string | CIDR of the Spoke Private Endpoints Subnet. |
| [`spokeVNetAddressPrefixes`](#parameter-spokevnetaddressprefixes) | array | CIDR of the Spoke Virtual Network. |
| [`vmAdminPassword`](#parameter-vmadminpassword) | securestring | The password to use for the virtual machine. |
| [`vmJumpBoxSubnetAddressPrefix`](#parameter-vmjumpboxsubnetaddressprefix) | string | CIDR to use for the virtual machine subnet. |
| [`vmSize`](#parameter-vmsize) | string | The size of the virtual machine to create. See https://learn.microsoft.com/azure/virtual-machines/sizes for more information. |

**Optional parameters**

| Parameter | Type | Description |
| :-- | :-- | :-- |
| [`applicationGatewayBackendFqdn`](#parameter-applicationgatewaybackendfqdn) | string | The FQDN of the backend to use for the Application Gateway. Default is empty. |
| [`applicationGatewayFqdn`](#parameter-applicationgatewayfqdn) | string | The FQDN of the Application Gateway. Required and must match if the TLS Certificate is provided. Default is empty. |
| [`base64Certificate`](#parameter-base64certificate) | securestring | The base64 encoded certificate to use for Application Gateway certificate. When not provided a self signed one will be generated, the certificate will be added to the Key Vault and assigned to the Application Gateway listener. |
| [`bastionResourceId`](#parameter-bastionresourceid) | string | The resource ID of the bastion host. If set, the spoke virtual network will be peered with the hub virtual network and the bastion host will be allowed to connect to the jump box. Default is empty. |
| [`deployAgentPool`](#parameter-deployagentpool) | bool | Deploy the agent pool for the container registry. Default value is true. |
| [`deploySampleApplication`](#parameter-deploysampleapplication) | bool | Deploy sample application to the container apps environment. Default is false. |
| [`deployZoneRedundantResources`](#parameter-deployzoneredundantresources) | bool | Default value is true. If true, any resources that support AZ will be deployed in all three AZ. However if the selected region is not supporting AZ, this parameter needs to be set to false. Default is true. |
| [`enableDdosProtection`](#parameter-enableddosprotection) | bool | DDoS protection mode. see https://learn.microsoft.com/azure/ddos-protection/ddos-protection-sku-comparison#skus. Default is "false". |
| [`enableTelemetry`](#parameter-enabletelemetry) | bool | Enable/Disable usage telemetry for module. |
| [`environment`](#parameter-environment) | string | The name of the environment (e.g. "dev", "test", "prod", "uat", "dr", "qa"). Up to 8 characters long. Default is "test". |
| [`exposeContainerAppsWith`](#parameter-exposecontainerappswith) | string | Specify the way container apps is going to be exposed. Options are applicationGateway or frontDoor. Default is "applicationGateway". |
| [`hubVirtualNetworkResourceId`](#parameter-hubvirtualnetworkresourceid) | string | The resource ID of the hub virtual network. If set, the spoke virtual network will be peered with the hub virtual network. Default is empty. |
| [`location`](#parameter-location) | string | The location of the Azure Container Apps deployment. Default is the location of the deployment location. |
| [`networkApplianceIpAddress`](#parameter-networkapplianceipaddress) | string | If set, the spoke virtual network will be peered with the hub virtual network and egres traffic will be routed through the network appliance. Default is empty. |
| [`routeSpokeTrafficInternally`](#parameter-routespoketrafficinternally) | bool | Define whether to route spoke-internal traffic within the spoke network. If false, traffic will be sent to the hub network. Default is false. |
| [`spokeResourceGroupName`](#parameter-spokeresourcegroupname) | string | The name of the resource group to create the resources in. If set, it overrides the name generated by the template. Default is empty. |
| [`storageAccountType`](#parameter-storageaccounttype) | string | The storage account type to use for the jump box. Defaults to `Standard_LRS`. |
| [`tags`](#parameter-tags) | object | Tags related to the Azure Container Apps deployment. Default is empty. |
| [`vmAuthenticationType`](#parameter-vmauthenticationtype) | string | Type of authentication to use on the Virtual Machine. SSH key is recommended. Default is "password". |
| [`vmJumpboxOSType`](#parameter-vmjumpboxostype) | string | The operating system type of the virtual machine. Default is "none" which results in no VM deployment. Default is "none". |
| [`vmLinuxSshAuthorizedKey`](#parameter-vmlinuxsshauthorizedkey) | securestring | The SSH public key to use for the virtual machine. If not provided one will be generated. Default is empty. |
| [`workloadName`](#parameter-workloadname) | string | The name of the workload that is being deployed. Up to 10 characters long. |

### Parameter: `applicationGatewayCertificateKeyName`

The name of the certificate key to use for Application Gateway certificate.

- Required: Yes
- Type: string

### Parameter: `deploymentSubnetAddressPrefix`

The CIDR to use for Deployment scripts subnet.

- Required: Yes
- Type: string

### Parameter: `enableApplicationInsights`

Enable or disable the createion of Application Insights.

- Required: Yes
- Type: bool

### Parameter: `enableDaprInstrumentation`

Enable or disable Dapr Application Instrumentation Key used for Dapr telemetry. If Application Insights is not enabled, this parameter is ignored.

- Required: Yes
- Type: bool

### Parameter: `spokeApplicationGatewaySubnetAddressPrefix`

CIDR of the Spoke Application Gateway Subnet.

- Required: Yes
- Type: string

### Parameter: `spokeInfraSubnetAddressPrefix`

CIDR of the Spoke Infrastructure Subnet.

- Required: Yes
- Type: string

### Parameter: `spokePrivateEndpointsSubnetAddressPrefix`

CIDR of the Spoke Private Endpoints Subnet.

- Required: Yes
- Type: string

### Parameter: `spokeVNetAddressPrefixes`

CIDR of the Spoke Virtual Network.

- Required: Yes
- Type: array

### Parameter: `vmAdminPassword`

The password to use for the virtual machine.

- Required: Yes
- Type: securestring

### Parameter: `vmJumpBoxSubnetAddressPrefix`

CIDR to use for the virtual machine subnet.

- Required: Yes
- Type: string

### Parameter: `vmSize`

The size of the virtual machine to create. See https://learn.microsoft.com/azure/virtual-machines/sizes for more information.

- Required: Yes
- Type: string

### Parameter: `applicationGatewayBackendFqdn`

The FQDN of the backend to use for the Application Gateway. Default is empty.

- Required: No
- Type: string
- Default: `''`

### Parameter: `applicationGatewayFqdn`

The FQDN of the Application Gateway. Required and must match if the TLS Certificate is provided. Default is empty.

- Required: No
- Type: string
- Default: `''`

### Parameter: `base64Certificate`

The base64 encoded certificate to use for Application Gateway certificate. When not provided a self signed one will be generated, the certificate will be added to the Key Vault and assigned to the Application Gateway listener.

- Required: No
- Type: securestring
- Default: `''`

### Parameter: `bastionResourceId`

The resource ID of the bastion host. If set, the spoke virtual network will be peered with the hub virtual network and the bastion host will be allowed to connect to the jump box. Default is empty.

- Required: No
- Type: string
- Default: `''`

### Parameter: `deployAgentPool`

Deploy the agent pool for the container registry. Default value is true.

- Required: No
- Type: bool
- Default: `True`

### Parameter: `deploySampleApplication`

Deploy sample application to the container apps environment. Default is false.

- Required: No
- Type: bool
- Default: `False`

### Parameter: `deployZoneRedundantResources`

Default value is true. If true, any resources that support AZ will be deployed in all three AZ. However if the selected region is not supporting AZ, this parameter needs to be set to false. Default is true.

- Required: No
- Type: bool
- Default: `True`

### Parameter: `enableDdosProtection`

DDoS protection mode. see https://learn.microsoft.com/azure/ddos-protection/ddos-protection-sku-comparison#skus. Default is "false".

- Required: No
- Type: bool
- Default: `False`

### Parameter: `enableTelemetry`

Enable/Disable usage telemetry for module.

- Required: No
- Type: bool
- Default: `True`

### Parameter: `environment`

The name of the environment (e.g. "dev", "test", "prod", "uat", "dr", "qa"). Up to 8 characters long. Default is "test".

- Required: No
- Type: string
- Default: `'test'`

### Parameter: `exposeContainerAppsWith`

Specify the way container apps is going to be exposed. Options are applicationGateway or frontDoor. Default is "applicationGateway".

- Required: No
- Type: string
- Default: `'applicationGateway'`
- Allowed:
  ```Bicep
  [
    'applicationGateway'
    'frontDoor'
    'none'
  ]
  ```

### Parameter: `hubVirtualNetworkResourceId`

The resource ID of the hub virtual network. If set, the spoke virtual network will be peered with the hub virtual network. Default is empty.

- Required: No
- Type: string
- Default: `''`

### Parameter: `location`

The location of the Azure Container Apps deployment. Default is the location of the deployment location.

- Required: No
- Type: string
- Default: `[deployment().location]`

### Parameter: `networkApplianceIpAddress`

If set, the spoke virtual network will be peered with the hub virtual network and egres traffic will be routed through the network appliance. Default is empty.

- Required: No
- Type: string
- Default: `''`

### Parameter: `routeSpokeTrafficInternally`

Define whether to route spoke-internal traffic within the spoke network. If false, traffic will be sent to the hub network. Default is false.

- Required: No
- Type: bool
- Default: `False`

### Parameter: `spokeResourceGroupName`

The name of the resource group to create the resources in. If set, it overrides the name generated by the template. Default is empty.

- Required: No
- Type: string
- Default: `''`

### Parameter: `storageAccountType`

The storage account type to use for the jump box. Defaults to `Standard_LRS`.

- Required: No
- Type: string
- Default: `'Standard_LRS'`

### Parameter: `tags`

Tags related to the Azure Container Apps deployment. Default is empty.

- Required: No
- Type: object
- Default: `{}`

### Parameter: `vmAuthenticationType`

Type of authentication to use on the Virtual Machine. SSH key is recommended. Default is "password".

- Required: No
- Type: string
- Default: `'password'`
- Allowed:
  ```Bicep
  [
    'password'
    'sshPublicKey'
  ]
  ```

### Parameter: `vmJumpboxOSType`

The operating system type of the virtual machine. Default is "none" which results in no VM deployment. Default is "none".

- Required: No
- Type: string
- Default: `'none'`
- Allowed:
  ```Bicep
  [
    'linux'
    'none'
    'windows'
  ]
  ```

### Parameter: `vmLinuxSshAuthorizedKey`

The SSH public key to use for the virtual machine. If not provided one will be generated. Default is empty.

- Required: No
- Type: securestring
- Default: `''`

### Parameter: `workloadName`

The name of the workload that is being deployed. Up to 10 characters long.

- Required: No
- Type: string
- Default: `'aca-lza'`

## Outputs

| Output | Type | Description |
| :-- | :-- | :-- |
| `applicationGatewayFqdn` | string | The FQDN of the Azure Application Gateway. |
| `applicationGatewayPublicIp` | string | The public IP address of the Azure Application Gateway. |
| `applicationGatewayResourceId` | string | The resource ID of the Azure Application Gateway. |
| `applicationInsightsName` | string | The name of application Insights instance. |
| `containerAppsEnvironmentName` | string | The name of the container apps environment. |
| `containerAppsEnvironmentResourceId` | string | The resource ID of the container apps environment. |
| `containerAppsEnvironmentWorkloadProfileNames` | array | The available workload profile names of the container apps environment. |
| `containerRegistryAgentPoolName` | string | The name of the internal agent pool for the container registry. |
| `containerRegistryLoginServer` | string | The name of the container registry login server. |
| `containerRegistryName` | string | The name of the container registry. |
| `containerRegistryResourceId` | string | The resource ID of the container registry. |
| `containerRegistryUserAssignedIdentityResourceId` | string | The resource ID of the user assigned managed identity for the container registry to be able to pull images from it. |
| `keyVaultName` | string | The name of the Azure key vault. |
| `keyVaultResourceId` | string | The resource ID of the key vault. |
| `keyVaultUri` | string | The keyvault URI endpoint. |
| `logAnalyticsWorkspaceResourceId` | string | The resource ID of the Log Analytics workspace created in the spoke vnet. |
| `resourceGroupName` | string | The name of the created resource group. |
| `spokeApplicationGatewaySubnetName` | string | The name of the Spoke Application Gateway Subnet.  If "spokeApplicationGatewaySubnetAddressPrefix" is empty, the subnet will not be created and the value returned is empty. |
| `spokeApplicationGatewaySubnetResourceId` | string | The resource ID of the Spoke Application Gateway Subnet. If "spokeApplicationGatewaySubnetAddressPrefix" is empty, the subnet will not be created and the value returned is empty. |
| `spokeInfraSubnetName` | string | The name of the Spoke Infrastructure Subnet. |
| `spokeInfraSubnetResourceId` | string | The resource ID of the Spoke Infrastructure Subnet. |
| `spokePrivateEndpointsSubnetName` | string | The name of the Spoke Private Endpoints Subnet. |
| `spokeVnetName` | string | The name of the Spoke Virtual Network. |
| `spokeVNetResourceId` | string | The  resource ID of the Spoke Virtual Network. |
| `vmJumpBoxName` | string | The name of the jump box virtual machine. |

## Cross-referenced modules

This section gives you an overview of all local-referenced module files (i.e., other modules that are referenced in this module) and all remote-referenced files (i.e., Bicep modules that are referenced from a Bicep Registry or Template Specs).

| Reference | Type |
| :-- | :-- |
| `br/public:avm/res/app/container-app:0.12.0` | Remote reference |
| `br/public:avm/res/app/managed-environment:0.8.1` | Remote reference |
| `br/public:avm/res/compute/virtual-machine:0.11.0` | Remote reference |
| `br/public:avm/res/container-registry/registry:0.6.0` | Remote reference |
| `br/public:avm/res/insights/component:0.4.2` | Remote reference |
| `br/public:avm/res/key-vault/vault:0.11.1` | Remote reference |
| `br/public:avm/res/managed-identity/user-assigned-identity:0.4.0` | Remote reference |
| `br/public:avm/res/network/application-gateway-web-application-firewall-policy:0.2.0` | Remote reference |
| `br/public:avm/res/network/network-security-group:0.5.0` | Remote reference |
| `br/public:avm/res/network/private-dns-zone:0.7.0` | Remote reference |
| `br/public:avm/res/network/public-ip-address:0.7.1` | Remote reference |
| `br/public:avm/res/network/route-table:0.4.0` | Remote reference |
| `br/public:avm/res/network/virtual-network:0.5.2` | Remote reference |
| `br/public:avm/res/resources/resource-group:0.4.0` | Remote reference |
| `br/public:avm/res/storage/storage-account:0.15.0` | Remote reference |

## Data Collection

The software may collect information about you and your use of the software and send it to Microsoft. Microsoft may use this information to provide services and improve our products and services. You may turn off the telemetry as described in the [repository](https://aka.ms/avm/telemetry). There are also some features in the software that may enable you and Microsoft to collect data from users of your applications. If you use these features, you must comply with applicable law, including providing appropriate notices to users of your applications together with a copy of Microsoft’s privacy statement. Our privacy statement is located at <https://go.microsoft.com/fwlink/?LinkID=824704>. You can learn more about data collection and use in the help documentation and our privacy statement. Your use of the software operates as your consent to these practices.
