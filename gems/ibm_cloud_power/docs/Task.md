# IbmCloudPower::Task

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of task owner |  |
| **component_id** | **String** | the component id of the task |  |
| **component_type** | **String** | the component type of the task |  |
| **creation_date** | **Time** | Creation Date |  |
| **last_update_date** | **Time** | Last Update Date |  |
| **operation** | **String** | Task Operation |  |
| **status** | **String** | status code of the task |  |
| **status_detail** | **String** | status detail of the task |  |
| **task_id** | **String** | Pcloud Task ID |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::Task.new(
  cloud_instance_id: null,
  component_id: null,
  component_type: null,
  creation_date: null,
  last_update_date: null,
  operation: null,
  status: null,
  status_detail: null,
  task_id: null
)
```

