# IbmCloudPower::CloudInstanceReference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **capabilities** | **Array&lt;String&gt;** | Cloud Instance Capabilities | [optional] |
| **cloud_instance_id** | **String** | Cloud Instance ID |  |
| **enabled** | **Boolean** | Indicates if the cloud instance is enabled |  |
| **href** | **String** | Link to Cloud Instance resource |  |
| **initialized** | **Boolean** | Indicates if the cloud instance is initialized and ready for use |  |
| **limits** | [**CloudInstanceUsageLimits**](CloudInstanceUsageLimits.md) |  |  |
| **name** | **String** | Cloud Instance Name |  |
| **region** | **String** | The region the cloud instance lives |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::CloudInstanceReference.new(
  capabilities: null,
  cloud_instance_id: null,
  enabled: null,
  href: null,
  initialized: null,
  limits: null,
  name: null,
  region: null
)
```

