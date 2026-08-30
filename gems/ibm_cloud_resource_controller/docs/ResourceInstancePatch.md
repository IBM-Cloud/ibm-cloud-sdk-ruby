# IbmCloudResourceController::ResourceInstancePatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The new name of the instance. | [optional] |
| **parameters** | **Hash&lt;String, Object&gt;** | The new configuration options for the instance.&lt;br&gt;&lt;br&gt;Set the &#x60;onetime_credentials&#x60; property to specify whether newly created resource key credentials can be retrieved by using the get resource key or the get a list of all of the resource keys requests. | [optional] |
| **resource_plan_id** | **String** | The unique ID of the plan associated with the offering. This value is provided by and stored in the global catalog. | [optional] |
| **allow_cleanup** | **Boolean** | A boolean that dictates if the resource instance should be deleted (cleaned up) during the processing of a region instance delete call. | [optional] |

## Example

```ruby
require 'ibm_cloud_resource_controller'

instance = IbmCloudResourceController::ResourceInstancePatch.new(
  name: my-new-instance-name,
  parameters: null,
  resource_plan_id: a8dff6d3-d287-4668-a81d-c87c55c2656d,
  allow_cleanup: null
)
```

