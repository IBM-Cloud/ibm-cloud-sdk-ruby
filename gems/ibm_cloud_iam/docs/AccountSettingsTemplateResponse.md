# IbmCloudIam::AccountSettingsTemplateResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the the template |  |
| **version** | **Integer** | Version of the the template |  |
| **account_id** | **String** | ID of the account where the template resides. |  |
| **name** | **String** | The name of the trusted profile template. This is visible only in the enterprise account. |  |
| **description** | **String** | The description of the trusted profile template. Describe the template for enterprise account users. | [optional] |
| **committed** | **Boolean** | Committed flag determines if the template is ready for assignment |  |
| **account_settings** | [**TemplateAccountSettings**](TemplateAccountSettings.md) |  |  |
| **history** | [**Array&lt;EnityHistoryRecord&gt;**](EnityHistoryRecord.md) | History of the Template. | [optional] |
| **entity_tag** | **String** | Entity tag for this templateId-version combination |  |
| **crn** | **String** | Cloud resource name |  |
| **created_at** | **String** | Template Created At | [optional] |
| **created_by_id** | **String** | IAMid of the creator | [optional] |
| **last_modified_at** | **String** | Template last modified at | [optional] |
| **last_modified_by_id** | **String** | IAMid of the identity that made the latest modification | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::AccountSettingsTemplateResponse.new(
  id: null,
  version: null,
  account_id: null,
  name: null,
  description: null,
  committed: null,
  account_settings: null,
  history: null,
  entity_tag: null,
  crn: null,
  created_at: null,
  created_by_id: null,
  last_modified_at: null,
  last_modified_by_id: null
)
```

