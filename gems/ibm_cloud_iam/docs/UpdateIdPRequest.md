# IbmCloudIam::UpdateIdPRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ui_setup_completed** | **Boolean** | Defines if the IDP setup was finished in the UI | [optional] |
| **name** | **String** | Speaking name of the Identity Provider | [optional] |
| **active** | **Boolean** | Defines if the IDP is active (enabled) for all accounts (including those who consumed the IdP) | [optional] |
| **properties** | [**UpdateIdPRequestProperties**](UpdateIdPRequestProperties.md) |  | [optional] |
| **secrets** | [**UpdateIdPRequestSecrets**](UpdateIdPRequestSecrets.md) |  | [optional] |
| **share_scope** | [**Array&lt;ShareScope&gt;**](ShareScope.md) | List of targets which can consume the IdP | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::UpdateIdPRequest.new(
  ui_setup_completed: null,
  name: null,
  active: null,
  properties: null,
  secrets: null,
  share_scope: null
)
```

