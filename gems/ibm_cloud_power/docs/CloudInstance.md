# IbmCloudPower::CloudInstance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **capabilities** | **Array&lt;String&gt;** | Cloud Instance Capabilities | [optional] |
| **cloud_instance_id** | **String** | Cloud Instance ID |  |
| **enabled** | **Boolean** | Indicates if the cloud instance is enabled |  |
| **initialized** | **Boolean** | Indicates if the cloud instance is initialized and ready for use |  |
| **limits** | [**CloudInstanceUsageLimits**](CloudInstanceUsageLimits.md) |  |  |
| **name** | **String** | Cloud Instance Name |  |
| **openstack_id** | **String** | The open stack ID that controls this cloud instance |  |
| **pvm_instances** | [**Array&lt;PVMInstanceReference&gt;**](PVMInstanceReference.md) | PVM instances owned by the Cloud Instance |  |
| **region** | **String** | The region the cloud instance lives |  |
| **tenant_id** | **String** | The tenant ID that owns this cloud instance |  |
| **usage** | [**CloudInstanceUsageLimits**](CloudInstanceUsageLimits.md) |  |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::CloudInstance.new(
  capabilities: null,
  cloud_instance_id: null,
  enabled: null,
  initialized: null,
  limits: null,
  name: null,
  openstack_id: null,
  pvm_instances: null,
  region: null,
  tenant_id: null,
  usage: null
)
```

