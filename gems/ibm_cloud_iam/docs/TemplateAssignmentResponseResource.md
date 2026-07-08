# IbmCloudIam::TemplateAssignmentResponseResource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **target** | **String** | Target account where the IAM resource is created. |  |
| **profile** | [**TemplateAssignmentResponseResourceDetail**](TemplateAssignmentResponseResourceDetail.md) |  | [optional] |
| **account_settings** | [**TemplateAssignmentResponseResourceDetail**](TemplateAssignmentResponseResourceDetail.md) |  | [optional] |
| **policy_template_references** | [**Array&lt;TemplateAssignmentResponseResourceDetail&gt;**](TemplateAssignmentResponseResourceDetail.md) | Policy resource(s) included only for trusted profile assignments with policy references. | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::TemplateAssignmentResponseResource.new(
  target: null,
  profile: null,
  account_settings: null,
  policy_template_references: null
)
```

