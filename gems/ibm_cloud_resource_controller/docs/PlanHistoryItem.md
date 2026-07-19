# IbmCloudResourceController::PlanHistoryItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource_plan_id** | **String** | The unique ID of the plan associated with the offering. This value is provided by and stored in the global catalog. |  |
| **start_date** | **Time** | The date on which the plan was changed. |  |
| **requestor_id** | **String** | The subject who made the plan change. | [optional] |

## Example

```ruby
require 'ibm_cloud_resource_controller'

instance = IbmCloudResourceController::PlanHistoryItem.new(
  resource_plan_id: null,
  start_date: null,
  requestor_id: null
)
```

