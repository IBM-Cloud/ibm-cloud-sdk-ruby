# IbmCloudIam::AddAccountIdpSettingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_user_strategy** | **String** | Strategy how Cloud User representives for the IdP users are handled |  |
| **active** | **Boolean** | Specifies if the IdP is enabled for usage in the given account context |  |
| **ui_default** | **Boolean** | Specifies if the IdP is used as default in the given account context |  |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::AddAccountIdpSettingRequest.new(
  cloud_user_strategy: null,
  active: null,
  ui_default: null
)
```

