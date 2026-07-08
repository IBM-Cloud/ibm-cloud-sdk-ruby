# IbmCloudIam::TemplateAssignmentListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **context** | [**ResponseContext**](ResponseContext.md) |  | [optional] |
| **offset** | **Integer** | The offset of the current page. | [optional] |
| **limit** | **Integer** | Optional size of a single page. Default is 20 items per page. Valid range is 1 to 100 | [optional] |
| **first** | **String** | Link to the first page. | [optional] |
| **previous** | **String** | Link to the previous available page. If &#39;previous&#39; property is not part of the response no previous page is available. | [optional] |
| **_next** | **String** | Link to the next available page. If &#39;next&#39; property is not part of the response no next page is available. | [optional] |
| **assignments** | [**Array&lt;TemplateAssignmentResponse&gt;**](TemplateAssignmentResponse.md) | List of Assignments based on the query paramters and the page size. The assignments array is always part of the response but might be empty depending on the query parameter values provided. |  |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::TemplateAssignmentListResponse.new(
  context: null,
  offset: null,
  limit: null,
  first: null,
  previous: null,
  _next: null,
  assignments: null
)
```

