# IbmCloudIam::ProfileClaimRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | the unique identifier of the claim rule |  |
| **entity_tag** | **String** | version of the claim rule |  |
| **created_at** | **Time** | If set contains a date time string of the creation date in ISO format. |  |
| **modified_at** | **Time** | If set contains a date time string of the last modification date in ISO format. | [optional] |
| **name** | **String** | The optional claim rule name | [optional] |
| **type** | **String** | Type of the claim rule, either &#39;Profile-SAML&#39; or &#39;Profile-CR&#39; |  |
| **realm_name** | **String** | The realm name of the Idp this claim rule applies to | [optional] |
| **expiration** | **Integer** | Session expiration in seconds |  |
| **cr_type** | **String** | The compute resource type. Not required if type is Profile-SAML. Valid values are VSI, PVS, BMS, IKS_SA, ROKS_SA, CE. | [optional] |
| **conditions** | [**Array&lt;ProfileClaimRuleConditions&gt;**](ProfileClaimRuleConditions.md) | Conditions of this claim rule. |  |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::ProfileClaimRule.new(
  id: null,
  entity_tag: null,
  created_at: null,
  modified_at: null,
  name: null,
  type: null,
  realm_name: null,
  expiration: null,
  cr_type: null,
  conditions: null
)
```

