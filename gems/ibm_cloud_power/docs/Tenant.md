# IbmCloudPower::Tenant

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instances** | [**Array&lt;CloudInstanceReference&gt;**](CloudInstanceReference.md) | Cloud Instances owned by the Tenant |  |
| **creation_date** | **Time** | Date of Tenant creation |  |
| **enabled** | **Boolean** | Indicates if the tenant is enabled |  |
| **icn** | **String** | IBM Customer Number | [optional] |
| **peering_networks** | [**Array&lt;PeeringNetwork&gt;**](PeeringNetwork.md) | Peering Network Information (optional) | [optional] |
| **ssh_keys** | [**Array&lt;SSHKey&gt;**](SSHKey.md) | Tenant SSH Keys | [optional] |
| **tenant_id** | **String** | Tenant ID |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::Tenant.new(
  cloud_instances: null,
  creation_date: null,
  enabled: null,
  icn: null,
  peering_networks: null,
  ssh_keys: null,
  tenant_id: null
)
```

