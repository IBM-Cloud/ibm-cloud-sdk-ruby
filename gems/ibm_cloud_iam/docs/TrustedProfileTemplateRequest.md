# IbmCloudIam::TrustedProfileTemplateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | ID of the account where the template resides. | [optional] |
| **name** | **String** | The name of the trusted profile template. This is visible only in the enterprise account. Required field when creating a new template. Otherwise this field is optional. If the field is included it will change the name value for all existing versions of the template. | [optional] |
| **description** | **String** | The description of the trusted profile template. Describe the template for enterprise account users. | [optional] |
| **profile** | [**TemplateProfileComponentRequest**](TemplateProfileComponentRequest.md) |  | [optional] |
| **policy_template_references** | [**Array&lt;PolicyTemplateReference&gt;**](PolicyTemplateReference.md) | Existing policy templates that you can reference to assign access in the trusted profile component. | [optional] |
| **action_controls** | [**ActionControls**](ActionControls.md) |  | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::TrustedProfileTemplateRequest.new(
  account_id: null,
  name: null,
  description: null,
  profile: null,
  policy_template_references: null,
  action_controls: null
)
```

