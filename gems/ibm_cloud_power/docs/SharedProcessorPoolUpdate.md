# IbmCloudPower::SharedProcessorPoolUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The new name for the shared processor pool. | [optional] |
| **reserved_cores** | **Integer** | The number of processor cores to reserve for the shared processor pool. The value cannot be decreased below the pool&#39;s currently allocated cores. Increasing the value is subject to available capacity on the host. | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::SharedProcessorPoolUpdate.new(
  name: null,
  reserved_cores: null
)
```

