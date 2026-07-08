# IbmCloudIam::UpdateIdPRequestSecrets

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **idp** | [**UpdateIdPRequestSecretsIdp**](UpdateIdPRequestSecretsIdp.md) |  | [optional] |
| **sp** | [**CreateIdpRequestSecretsSp**](CreateIdpRequestSecretsSp.md) |  | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::UpdateIdPRequestSecrets.new(
  idp: null,
  sp: null
)
```

