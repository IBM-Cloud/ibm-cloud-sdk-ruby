# IbmCloudPower::CloudInstanceReference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID |  |
| **name** | **String** | Cloud Instance Name |  |
| **region** | **String** | The region the cloud instance lives |  |
| **enabled** | **Boolean** | Indicates if the cloud instance is enabled |  |
| **initialized** | **Boolean** | Indicates if the cloud instance is initialized and ready for use |  |
| **limits** | [**CloudInstanceUsageLimits**](CloudInstanceUsageLimits.md) |  |  |
| **capabilities** | **Array&lt;String&gt;** | Cloud Instance Capabilities | [optional] |
| **href** | **String** | Link to Cloud Instance resource |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::CloudInstanceReference.new(
  cloud_instance_id: null,
  name: null,
  region: null,
  enabled: null,
  initialized: null,
  limits: null,
  capabilities: null,
  href: null
)
```

