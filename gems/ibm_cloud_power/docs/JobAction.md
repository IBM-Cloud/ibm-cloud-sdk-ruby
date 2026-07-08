# IbmCloudPower::JobAction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **end_time** | **Time** | action ending timestamp | [optional] |
| **name** | **String** | action name | [optional] |
| **start_time** | **Time** | action starting timestamp | [optional] |
| **status** | **String** | status of the action | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::JobAction.new(
  end_time: null,
  name: null,
  start_time: null,
  status: null
)
```

