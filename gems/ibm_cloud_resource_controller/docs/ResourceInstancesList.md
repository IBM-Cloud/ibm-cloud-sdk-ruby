# IbmCloudResourceController::ResourceInstancesList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rows_count** | **Integer** | The number of resource instances in &#x60;resources&#x60;. |  |
| **next_url** | **String** | The URL for requesting the next page of results. |  |
| **resources** | [**Array&lt;ResourceInstance&gt;**](ResourceInstance.md) | A list of resource instances. |  |

## Example

```ruby
require 'ibm_cloud_resource_controller'

instance = IbmCloudResourceController::ResourceInstancesList.new(
  rows_count: null,
  next_url: null,
  resources: null
)
```

