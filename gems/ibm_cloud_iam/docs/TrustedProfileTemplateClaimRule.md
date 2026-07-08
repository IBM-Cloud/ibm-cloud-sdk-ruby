# IbmCloudIam::TrustedProfileTemplateClaimRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the claim rule to be created or updated | [optional] |
| **type** | **String** | Type of the claim rule |  |
| **realm_name** | **String** | The realm name of the Idp this claim rule applies to. This field is required only if the type is specified as &#39;Profile-SAML&#39;. | [optional] |
| **expiration** | **Integer** | Session expiration in seconds, only required if type is &#39;Profile-SAML&#39;. | [optional] |
| **conditions** | [**Array&lt;ProfileClaimRuleConditions&gt;**](ProfileClaimRuleConditions.md) | Conditions of this claim rule. |  |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::TrustedProfileTemplateClaimRule.new(
  name: null,
  type: null,
  realm_name: null,
  expiration: null,
  conditions: null
)
```

