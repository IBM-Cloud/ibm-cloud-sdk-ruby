# IbmCloudIam::TrustedProfilesList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **context** | [**ResponseContext**](ResponseContext.md) |  | [optional] |
| **offset** | **Integer** | The offset of the current page. | [optional] |
| **limit** | **Integer** | Optional size of a single page. Default is 20 items per page. Valid range is 1 to 100 | [optional] |
| **first** | **String** | Link to the first page. | [optional] |
| **previous** | **String** | Link to the previous available page. If &#39;previous&#39; property is not part of the response no previous page is available. | [optional] |
| **_next** | **String** | Link to the next available page. If &#39;next&#39; property is not part of the response no next page is available. | [optional] |
| **profiles** | [**Array&lt;TrustedProfile&gt;**](TrustedProfile.md) | List of trusted profiles |  |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::TrustedProfilesList.new(
  context: null,
  offset: null,
  limit: null,
  first: null,
  previous: null,
  _next: null,
  profiles: null
)
```

