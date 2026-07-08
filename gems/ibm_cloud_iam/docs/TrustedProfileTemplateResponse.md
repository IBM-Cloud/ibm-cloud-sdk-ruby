# IbmCloudIam::TrustedProfileTemplateResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the the template |  |
| **version** | **Integer** | Version of the the template |  |
| **account_id** | **String** | ID of the account where the template resides. |  |
| **name** | **String** | The name of the trusted profile template. This is visible only in the enterprise account. |  |
| **description** | **String** | The description of the trusted profile template. Describe the template for enterprise account users. | [optional] |
| **committed** | **Boolean** | Committed flag determines if the template is ready for assignment | [optional] |
| **profile** | [**TemplateProfileComponentResponse**](TemplateProfileComponentResponse.md) |  | [optional] |
| **policy_template_references** | [**Array&lt;PolicyTemplateReference&gt;**](PolicyTemplateReference.md) | Existing policy templates that you can reference to assign access in the trusted profile component. | [optional] |
| **action_controls** | [**ActionControls**](ActionControls.md) |  | [optional] |
| **history** | [**Array&lt;EnityHistoryRecord&gt;**](EnityHistoryRecord.md) | History of the trusted profile template. | [optional] |
| **entity_tag** | **String** | Entity tag for this templateId-version combination | [optional] |
| **crn** | **String** | Cloud resource name | [optional] |
| **created_at** | **String** | Timestamp of when the template was created | [optional] |
| **created_by_id** | **String** | IAMid of the creator | [optional] |
| **last_modified_at** | **String** | Timestamp of when the template was last modified | [optional] |
| **last_modified_by_id** | **String** | IAMid of the identity that made the latest modification | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::TrustedProfileTemplateResponse.new(
  id: null,
  version: null,
  account_id: null,
  name: null,
  description: null,
  committed: null,
  profile: null,
  policy_template_references: null,
  action_controls: null,
  history: null,
  entity_tag: null,
  crn: null,
  created_at: null,
  created_by_id: null,
  last_modified_at: null,
  last_modified_by_id: null
)
```

