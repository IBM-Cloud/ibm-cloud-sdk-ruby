# IbmCloudIam::UpdateIdPRequestPropertiesIdp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity_id** | **String** | SAML IDP entity ID | [optional] |
| **redirect_binding_url** | **String** | Redirect binding URL | [optional] |
| **want_request_signed** | **Boolean** | Indicates if IDP wants requests to be signed | [optional] |
| **logout_url** | **String** | SAML IDP logout URL (optional) | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::UpdateIdPRequestPropertiesIdp.new(
  entity_id: null,
  redirect_binding_url: null,
  want_request_signed: null,
  logout_url: null
)
```

