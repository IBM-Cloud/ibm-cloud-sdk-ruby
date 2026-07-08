# IbmCloudIam::SamlMetadataImportResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **idp_id** | **String** | Realm ID of the Identity Provider. |  |
| **entity_tag** | **String** | Version information used for optimistic locking. |  |
| **created_at** | **Time** | Creation timestamp. |  |
| **modified_at** | **Time** | Last modification timestamp. |  |
| **account_id** | **String** | Account that owns the Identity Provider. |  |
| **name** | **String** | User-friendly name of the Identity Provider. |  |
| **type** | **String** |  |  |
| **properties** | **Object** | Type-specific Identity Provider configuration. |  |
| **secrets** | **Object** | Type-specific secret configuration. |  |
| **history** | **Array&lt;Object&gt;** | History entries for the Identity Provider. | [optional] |
| **share_scope** | [**Array&lt;ShareScope&gt;**](ShareScope.md) | Accounts, enterprises, or account groups allowed to consume the IdP. | [optional] |
| **active** | **Boolean** | Indicates whether the Identity Provider is enabled. If disabled, the IdP cannot be used by the owner account or any consumer accounts.  |  |
| **ui_setup_completed** | **Boolean** | Internal flag used by the UI to determine whether the Identity Provider should be opened in the setup wizard or the edit dialog.  | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::SamlMetadataImportResponse.new(
  idp_id: null,
  entity_tag: null,
  created_at: null,
  modified_at: null,
  account_id: null,
  name: null,
  type: null,
  properties: null,
  secrets: null,
  history: null,
  share_scope: null,
  active: null,
  ui_setup_completed: null
)
```

