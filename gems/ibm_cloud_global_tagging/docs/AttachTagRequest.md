# IbmCloudGlobalTagging::AttachTagRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag_name** | **String** | The name of the tag to attach | [optional] |
| **tag_names** | **Array&lt;String&gt;** | An array of tag names to attach | [optional] |
| **resources** | [**Array&lt;Resource&gt;**](Resource.md) | List of resources on which the tagging operation operates on | [optional] |
| **query** | [**QueryString**](QueryString.md) |  | [optional] |

## Example

```ruby
require 'ibm_cloud_global_tagging'

instance = IbmCloudGlobalTagging::AttachTagRequest.new(
  tag_name: null,
  tag_names: null,
  resources: null,
  query: null
)
```

