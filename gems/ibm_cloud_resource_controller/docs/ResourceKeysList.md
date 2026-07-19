# IbmCloudResourceController::ResourceKeysList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rows_count** | **Integer** | The number of resource keys in &#x60;resources&#x60;. |  |
| **next_url** | **String** | The URL for requesting the next page of results. |  |
| **resources** | [**Array&lt;ResourceKey&gt;**](ResourceKey.md) | A list of resource keys. |  |

## Example

```ruby
require 'ibm_cloud_resource_controller'

instance = IbmCloudResourceController::ResourceKeysList.new(
  rows_count: null,
  next_url: null,
  resources: null
)
```

