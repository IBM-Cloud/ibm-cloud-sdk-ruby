# IbmCloudIam::TemplateAssignmentResponseResourceDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Policy Template Id, only returned for a profile assignment with policy references. | [optional] |
| **version** | **String** | Policy version, only returned for a profile assignment with policy references. | [optional] |
| **resource_created** | [**TemplateAssignmentResource**](TemplateAssignmentResource.md) |  | [optional] |
| **error_message** | [**TemplateAssignmentResourceError**](TemplateAssignmentResourceError.md) |  | [optional] |
| **status** | **String** | Status for the target account&#39;s assignment |  |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::TemplateAssignmentResponseResourceDetail.new(
  id: null,
  version: null,
  resource_created: null,
  error_message: null,
  status: null
)
```

