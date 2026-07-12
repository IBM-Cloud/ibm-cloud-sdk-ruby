# IbmCloudGlobalTagging::SetTagsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag_names** | **Array&lt;String&gt;** | An array of tag names to set |  |
| **resources** | [**Array&lt;Resource&gt;**](Resource.md) | List of resources on which the tags are set. Current implementation support only one resource whose type is included in a specific subset of IMS resources. |  |

## Example

```ruby
require 'ibm_cloud_global_tagging'

instance = IbmCloudGlobalTagging::SetTagsRequest.new(
  tag_names: null,
  resources: null
)
```

