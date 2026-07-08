# IbmCloudIam::CreateIdpRequestPropertiesSp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **want_assertion_signed** | **Boolean** | Indicates if SP wants assertions to be signed | [optional] |
| **want_response_signed** | **Boolean** | Indicates if SP wants responses to be signed | [optional] |
| **encrypt_response** | **Boolean** | Indicates if responses should be encrypted | [optional] |
| **idp_initiated_login_enabled** | **Boolean** | Enables IDP-initiated login | [optional] |
| **logout_url_enabled_when_available** | **Boolean** | Enables logout URL when available | [optional] |
| **idp_initiated_urls** | **Array&lt;String&gt;** | URLs for IDP-initiated login (only when IdP initiated login is used) | [optional] |
| **authn_context** | [**CreateIdpRequestPropertiesSpAuthnContext**](CreateIdpRequestPropertiesSpAuthnContext.md) |  | [optional] |
| **claims** | **Hash&lt;String, String&gt;** | Custom mapping between SAML assertions and IAM claims (can be left empty when no custom mapping is needed) | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::CreateIdpRequestPropertiesSp.new(
  want_assertion_signed: null,
  want_response_signed: null,
  encrypt_response: null,
  idp_initiated_login_enabled: null,
  logout_url_enabled_when_available: null,
  idp_initiated_urls: null,
  authn_context: null,
  claims: null
)
```

