# IbmCloudGlobalTagging::CreateTagResultsResultsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag_name** | **String** | The name of the tag created | [optional] |
| **is_error** | **Boolean** | true if the tag was not created (for example, the tag already exists). | [optional] |

## Example

```ruby
require 'ibm_cloud_global_tagging'

instance = IbmCloudGlobalTagging::CreateTagResultsResultsInner.new(
  tag_name: null,
  is_error: null
)
```

