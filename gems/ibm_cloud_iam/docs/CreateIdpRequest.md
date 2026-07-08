# IbmCloudIam::CreateIdpRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account where the IdP resides in |  |
| **name** | **String** | Speaking name of the Identity Provider |  |
| **type** | **String** | Type of the IDP |  |
| **active** | **Boolean** | Defines if the IDP is active (enabled) for all accounts (including those who consumed the IdP). Default during creation is true | [optional] |
| **properties** | [**CreateIdpRequestProperties**](CreateIdpRequestProperties.md) |  | [optional] |
| **secrets** | [**CreateIdpRequestSecrets**](CreateIdpRequestSecrets.md) |  | [optional] |
| **share_scope** | [**Array&lt;ShareScope&gt;**](ShareScope.md) | List of targets which can consume the IdP | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::CreateIdpRequest.new(
  account_id: null,
  name: null,
  type: null,
  active: null,
  properties: null,
  secrets: null,
  share_scope: null
)
```

