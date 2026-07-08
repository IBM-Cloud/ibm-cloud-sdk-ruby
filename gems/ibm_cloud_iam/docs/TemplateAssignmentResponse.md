# IbmCloudIam::TemplateAssignmentResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **context** | [**ResponseContext**](ResponseContext.md) |  | [optional] |
| **id** | **String** | Assignment record Id |  |
| **account_id** | **String** | Enterprise account Id |  |
| **template_id** | **String** | Template Id |  |
| **template_version** | **Integer** | Template version |  |
| **target_type** | **String** | Assignment target type |  |
| **target** | **String** | Assignment target |  |
| **status** | **String** | Assignment status |  |
| **resources** | [**Array&lt;TemplateAssignmentResponseResource&gt;**](TemplateAssignmentResponseResource.md) | Status breakdown per target account of IAM resources created or errors encountered in attempting to create those IAM resources. IAM resources are only included in the response providing the assignment is not in progress. IAM resources are also only included when getting a single assignment, and excluded by list APIs. | [optional] |
| **history** | [**Array&lt;EnityHistoryRecord&gt;**](EnityHistoryRecord.md) | Assignment history | [optional] |
| **href** | **String** | Href | [optional] |
| **created_at** | **String** | Assignment created at |  |
| **created_by_id** | **String** | IAMid of the identity that created the assignment |  |
| **last_modified_at** | **String** | Assignment modified at |  |
| **last_modified_by_id** | **String** | IAMid of the identity that last modified the assignment |  |
| **entity_tag** | **String** | Entity tag for this assignment record |  |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::TemplateAssignmentResponse.new(
  context: null,
  id: null,
  account_id: null,
  template_id: null,
  template_version: null,
  target_type: null,
  target: null,
  status: null,
  resources: null,
  history: null,
  href: null,
  created_at: null,
  created_by_id: null,
  last_modified_at: null,
  last_modified_by_id: null,
  entity_tag: null
)
```

