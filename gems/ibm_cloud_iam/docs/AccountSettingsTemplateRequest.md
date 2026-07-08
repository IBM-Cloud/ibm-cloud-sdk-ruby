# IbmCloudIam::AccountSettingsTemplateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | ID of the account where the template resides. | [optional] |
| **name** | **String** | The name of the trusted profile template. This is visible only in the enterprise account. | [optional] |
| **description** | **String** | The description of the trusted profile template. Describe the template for enterprise account users. | [optional] |
| **account_settings** | [**TemplateAccountSettings**](TemplateAccountSettings.md) |  | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::AccountSettingsTemplateRequest.new(
  account_id: null,
  name: null,
  description: null,
  account_settings: null
)
```

