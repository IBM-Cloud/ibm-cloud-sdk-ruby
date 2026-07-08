# IbmCloudIam::UpdateIdPRequestSecretsIdp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signing** | [**Array&lt;CreateIdpRequestSecretsIdpSigningInner&gt;**](CreateIdpRequestSecretsIdpSigningInner.md) | IDP signing certificates | [optional] |
| **encrypting** | [**Array&lt;CreateIdpRequestSecretsIdpSigningInner&gt;**](CreateIdpRequestSecretsIdpSigningInner.md) | IDP encrypting certificates | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::UpdateIdPRequestSecretsIdp.new(
  signing: null,
  encrypting: null
)
```

