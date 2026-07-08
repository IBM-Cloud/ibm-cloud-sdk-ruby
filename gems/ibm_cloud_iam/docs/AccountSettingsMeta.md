# IbmCloudIam::AccountSettingsMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **context** | [**ResponseContext**](ResponseContext.md) |  | [optional] |
| **account_id** | **String** | Unique ID of the account. | [optional] |
| **entity_tag** | **String** | Version of the account settings. | [optional] |
| **history** | [**Array&lt;EnityHistoryRecord&gt;**](EnityHistoryRecord.md) | History of the Account Settings. | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::AccountSettingsMeta.new(
  context: null,
  account_id: null,
  entity_tag: null,
  history: null
)
```

