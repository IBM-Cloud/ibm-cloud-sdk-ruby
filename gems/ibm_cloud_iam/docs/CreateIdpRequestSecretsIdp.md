# IbmCloudIam::CreateIdpRequestSecretsIdp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **xml_import** | **Boolean** | Flag indicating if secrets should be imported from metadata.xml | [optional] |
| **signing** | [**Array&lt;CreateIdpRequestSecretsIdpSigningInner&gt;**](CreateIdpRequestSecretsIdpSigningInner.md) | IDP signing certificates (required when not using xml_import) | [optional] |
| **encrypting** | [**Array&lt;CreateIdpRequestSecretsIdpSigningInner&gt;**](CreateIdpRequestSecretsIdpSigningInner.md) | IDP encrypting certificates (optional) | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::CreateIdpRequestSecretsIdp.new(
  xml_import: null,
  signing: null,
  encrypting: null
)
```

