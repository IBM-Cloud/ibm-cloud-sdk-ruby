# IbmCloudIam::UpdateAccountIdpSettingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_user_strategy** | **String** | Strategy how Cloud User representives for the IdP users are handled | [optional] |
| **active** | **Boolean** | Specifies if the IdP is enabled for usage in the given account context | [optional] |
| **ui_default** | **Boolean** | Specifies if the IdP is used as default in the given account context | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::UpdateAccountIdpSettingRequest.new(
  cloud_user_strategy: null,
  active: null,
  ui_default: null
)
```

