# IbmCloudIam::UserMfa

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **iam_id** | **String** | The iam_id of the user. | [optional] |
| **mfa** | [**MfaOptions**](MfaOptions.md) |  | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::UserMfa.new(
  iam_id: null,
  mfa: null
)
```

