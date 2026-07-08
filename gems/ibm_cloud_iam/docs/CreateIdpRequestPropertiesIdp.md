# IbmCloudIam::CreateIdpRequestPropertiesIdp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **xml_import** | **Boolean** | Flag indicating if IdP should be imported from metadata.xml | [optional] |
| **entity_id** | **String** | SAML IDP entity ID (required when not using xml_import) | [optional] |
| **redirect_binding_url** | **String** | Redirect binding URL (required when not using xml_import) | [optional] |
| **want_request_signed** | **Boolean** | Indicates if IDP wants requests to be signed | [optional] |
| **logout_url** | **String** | SAML IDP logout URL (optional) | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::CreateIdpRequestPropertiesIdp.new(
  xml_import: null,
  entity_id: null,
  redirect_binding_url: null,
  want_request_signed: null,
  logout_url: null
)
```

