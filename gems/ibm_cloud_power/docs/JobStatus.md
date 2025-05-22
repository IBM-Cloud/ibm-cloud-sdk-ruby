# IbmCloudPower::JobStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** | message detailing current state | [optional] |
| **progress** | **String** | progress of a job |  |
| **state** | **String** | state of a job |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::JobStatus.new(
  message: null,
  progress: null,
  state: null
)
```

