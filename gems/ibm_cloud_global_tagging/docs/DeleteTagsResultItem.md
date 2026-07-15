# IbmCloudGlobalTagging::DeleteTagsResultItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag_name** | **String** | The name of the deleted tag. | [optional] |
| **is_error** | **Boolean** | true if the tag was not deleted. | [optional] |

## Example

```ruby
require 'ibm_cloud_global_tagging'

instance = IbmCloudGlobalTagging::DeleteTagsResultItem.new(
  tag_name: null,
  is_error: null
)
```

