# IbmCloudGlobalTagging::DeleteTagResultsItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider** | **String** | The provider of the tag. | [optional] |
| **is_error** | **Boolean** | It is &#x60;true&#x60; if the operation exits with an error (for example, the tag does not exist). | [optional] |

## Example

```ruby
require 'ibm_cloud_global_tagging'

instance = IbmCloudGlobalTagging::DeleteTagResultsItem.new(
  provider: null,
  is_error: null
)
```

