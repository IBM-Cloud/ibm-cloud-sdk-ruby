# IbmCloudPower::JobWorkflow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **actions** | [**Array&lt;JobAction&gt;**](JobAction.md) | list of actions for the job | [optional] |
| **percent_completion** | **Integer** | percentage of completed tasks for this job |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::JobWorkflow.new(
  actions: null,
  percent_completion: null
)
```

