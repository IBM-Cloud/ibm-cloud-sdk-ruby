# IbmCloudIam::AccountSettingsUserMFAResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **iam_id** | **String** | The iam_id of the user. |  |
| **mfa** | [**MfaOptions**](MfaOptions.md) |  |  |
| **name** | **String** | name of the user account. | [optional] |
| **user_name** | **String** | userName of the user. | [optional] |
| **email** | **String** | email of the user. | [optional] |
| **description** | **String** | optional description. | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::AccountSettingsUserMFAResponse.new(
  iam_id: null,
  mfa: null,
  name: null,
  user_name: null,
  email: null,
  description: null
)
```

