# IbmCloudGlobalTagging::RestoreTagsResultsItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource_id** | **String** | resource_id. | [optional] |
| **tags** | **Array&lt;String&gt;** | list of user tags restored. | [optional] |
| **service_tags** | **Array&lt;String&gt;** | list of service tags restored. | [optional] |
| **access_tags** | **Array&lt;String&gt;** | list of access tags restored. | [optional] |

## Example

```ruby
require 'ibm_cloud_global_tagging'

instance = IbmCloudGlobalTagging::RestoreTagsResultsItem.new(
  resource_id: null,
  tags: null,
  service_tags: null,
  access_tags: null
)
```

