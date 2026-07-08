# IbmCloudIam::AccountIdpSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **idp_id** | **String** |  | [optional] |
| **owner_account** | **String** |  | [optional] |
| **owner_account_name** | **String** |  | [optional] |
| **idp_name** | **String** |  | [optional] |
| **idp_type** | **String** |  | [optional] |
| **cloud_user_strategy** | **String** |  | [optional] |
| **active** | **Boolean** |  | [optional] |
| **ui_default** | **Boolean** |  | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::AccountIdpSettings.new(
  idp_id: null,
  owner_account: null,
  owner_account_name: null,
  idp_name: null,
  idp_type: null,
  cloud_user_strategy: null,
  active: null,
  ui_default: null
)
```

