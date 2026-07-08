# IbmCloudIam::TrustedProfileTemplateList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **context** | [**ResponseContext**](ResponseContext.md) |  | [optional] |
| **offset** | **Integer** | The offset of the current page. | [optional] |
| **limit** | **Integer** | Optional size of a single page. | [optional][default to 20] |
| **first** | **String** | Link to the first page. | [optional] |
| **previous** | **String** | Link to the previous available page. If &#39;previous&#39; property is not part of the response no previous page is available. | [optional] |
| **_next** | **String** | Link to the next available page. If &#39;next&#39; property is not part of the response no next page is available. | [optional] |
| **profile_templates** | [**Array&lt;TrustedProfileTemplateResponse&gt;**](TrustedProfileTemplateResponse.md) | List of Profile Templates based on the query paramters and the page size. The profile_templates array is always part of the response but might be empty depending on the query parameter values provided. |  |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::TrustedProfileTemplateList.new(
  context: null,
  offset: null,
  limit: null,
  first: null,
  previous: null,
  _next: null,
  profile_templates: null
)
```

