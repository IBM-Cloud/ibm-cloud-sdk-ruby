# IbmCloudPower::Task

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **task_id** | **String** | Pcloud Task ID |  |
| **operation** | **String** | Task Operation |  |
| **cloud_instance_id** | **String** | Cloud Instance ID of task owner |  |
| **component_type** | **String** | the component type of the task |  |
| **component_id** | **String** | the component id of the task |  |
| **status** | **String** | status code of the task |  |
| **status_detail** | **String** | status detail of the task |  |
| **creation_date** | **Time** | Creation Date |  |
| **last_update_date** | **Time** | Last Update Date |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::Task.new(
  task_id: null,
  operation: null,
  cloud_instance_id: null,
  component_type: null,
  component_id: null,
  status: null,
  status_detail: null,
  creation_date: null,
  last_update_date: null
)
```

