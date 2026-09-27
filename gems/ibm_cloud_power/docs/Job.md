# IbmCloudPower::Job

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_timestamp** | **Time** | create timestamp for the job | [optional] |
| **id** | **String** | id of a job |  |
| **operation** | [**JobOperation**](JobOperation.md) |  |  |
| **resources** | [**JobResources**](JobResources.md) | resources involved in this job | [optional] |
| **status** | [**JobStatus**](JobStatus.md) |  |  |
| **workflow** | [**JobWorkflow**](JobWorkflow.md) |  | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::Job.new(
  create_timestamp: null,
  id: null,
  operation: null,
  resources: null,
  status: null,
  workflow: null
)
```

