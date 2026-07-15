# IbmCloudGlobalTagging::DeleteTagsResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_count** | **Integer** | The number of tags that have been deleted. | [optional] |
| **errors** | **Boolean** | It is set to true if there is at least one tag operation in error. | [optional] |
| **items** | [**Array&lt;DeleteTagsResultItem&gt;**](DeleteTagsResultItem.md) | The list of tag operation results. | [optional] |

## Example

```ruby
require 'ibm_cloud_global_tagging'

instance = IbmCloudGlobalTagging::DeleteTagsResult.new(
  total_count: null,
  errors: null,
  items: null
)
```

