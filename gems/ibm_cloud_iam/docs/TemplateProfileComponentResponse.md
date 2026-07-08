# IbmCloudIam::TemplateProfileComponentResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the Profile |  |
| **description** | **String** | Description of the Profile | [optional] |
| **rules** | [**Array&lt;TrustedProfileTemplateClaimRule&gt;**](TrustedProfileTemplateClaimRule.md) | Rules for the Profile | [optional] |
| **email** | **String** | Email of the trusted profile | [optional] |
| **identities** | [**Array&lt;ProfileIdentityResponse&gt;**](ProfileIdentityResponse.md) | Identities for the Profile | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::TemplateProfileComponentResponse.new(
  name: null,
  description: null,
  rules: null,
  email: null,
  identities: null
)
```

