# IbmCloudIam::ProfileClaimRuleRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **context** | [**ResponseContext**](ResponseContext.md) |  | [optional] |
| **name** | **String** | Name of the claim rule to be created or updated | [optional] |
| **type** | **String** | Type of the claim rule, either &#39;Profile-SAML&#39; or &#39;Profile-CR&#39; |  |
| **realm_name** | **String** | The realm name of the Idp this claim rule applies to. This field is required only if the type is specified as &#39;Profile-SAML&#39;. | [optional] |
| **cr_type** | **String** | The compute resource type the rule applies to, required only if type is specified as &#39;Profile-CR&#39;. Valid values are VSI, PVS, BMS, IKS_SA, ROKS_SA, CE. | [optional] |
| **expiration** | **Integer** | Session expiration in seconds, only required if type is &#39;Profile-SAML&#39;. | [optional] |
| **conditions** | [**Array&lt;ProfileClaimRuleConditions&gt;**](ProfileClaimRuleConditions.md) | Conditions of this claim rule. |  |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::ProfileClaimRuleRequest.new(
  context: null,
  name: null,
  type: null,
  realm_name: null,
  cr_type: null,
  expiration: null,
  conditions: null
)
```

