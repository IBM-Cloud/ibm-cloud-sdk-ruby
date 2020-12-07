# IbmCloudResourceController::PlanHistoryItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**resource_plan_id** | **String** | The unique ID of the plan associated with the offering. This value is provided by and stored in the global catalog. | 
**start_date** | **DateTime** | The date on which the plan was changed. | 

## Code Sample

```ruby
require 'IbmCloudResourceController'

instance = IbmCloudResourceController::PlanHistoryItem.new(resource_plan_id: null,
                                 start_date: null)
```


