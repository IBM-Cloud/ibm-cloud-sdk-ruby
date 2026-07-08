# IbmCloudPower::Job

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_timestamp** | **Time** | create timestamp for the job | [optional] |
| **id** | **String** | id of a job |  |
| **operation** | [**JobOperation**](JobOperation.md) |  |  |
| **status** | [**JobStatus**](JobStatus.md) |  |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::Job.new(
  create_timestamp: null,
  id: null,
  operation: null,
  status: null
)
```

