# IbmCloudIam::EffectiveAccountSettingsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **context** | [**ResponseContext**](ResponseContext.md) |  | [optional] |
| **account_id** | **String** | Unique ID of the account. |  |
| **effective** | [**AccountSettingsEffectiveSection**](AccountSettingsEffectiveSection.md) |  |  |
| **account** | [**AccountSettingsResponse**](AccountSettingsResponse.md) |  |  |
| **assigned_templates** | [**Array&lt;AccountSettingsAssignedTemplatesSection&gt;**](AccountSettingsAssignedTemplatesSection.md) | assigned template section. | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::EffectiveAccountSettingsResponse.new(
  context: null,
  account_id: null,
  effective: null,
  account: null,
  assigned_templates: null
)
```

