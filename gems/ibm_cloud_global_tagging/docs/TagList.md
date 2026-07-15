# IbmCloudGlobalTagging::TagList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_count** | **Integer** | Set the occurrences of the total tags that are associated with this account. | [optional] |
| **offset** | **Integer** | The offset at which tags are returned | [optional] |
| **limit** | **Integer** | The number of tags requested to be returned | [optional] |
| **items** | [**Array&lt;Tag&gt;**](Tag.md) | Array of output results. | [optional] |

## Example

```ruby
require 'ibm_cloud_global_tagging'

instance = IbmCloudGlobalTagging::TagList.new(
  total_count: null,
  offset: null,
  limit: null,
  items: null
)
```

