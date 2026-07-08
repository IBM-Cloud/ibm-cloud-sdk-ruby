# IbmCloudIam::CreateIdpRequestSecretsSpSigningInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **certificate_value** | **String** | Certificate value in PEM format | [optional] |
| **key_value** | **String** | Private key value | [optional] |
| **key_encoding** | **String** | Key encoding format (e.g., pkcs8) | [optional] |
| **type** | **String** | Certificate type | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::CreateIdpRequestSecretsSpSigningInner.new(
  certificate_value: null,
  key_value: null,
  key_encoding: null,
  type: null
)
```

