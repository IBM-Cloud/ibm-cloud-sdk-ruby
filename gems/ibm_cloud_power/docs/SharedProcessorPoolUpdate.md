# IbmCloudPower::SharedProcessorPoolUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The new name for the Shared Processor Pool; minumum of 2 characters, maximum of 12, the only special character allowed is the underscore &#39;_&#39;. | [optional] |
| **reserved_cores** | **Integer** | The amount of reserved processor cores for the Shared Processor Pool; only integers allowed, no fractional values; the amount can be increased (dependent on available resources) or decreased (dependent on currently allocated resources) | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::SharedProcessorPoolUpdate.new(
  name: null,
  reserved_cores: null
)
```

