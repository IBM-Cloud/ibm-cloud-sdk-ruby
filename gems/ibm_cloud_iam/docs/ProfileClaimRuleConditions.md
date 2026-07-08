# IbmCloudIam::ProfileClaimRuleConditions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **claim** | **String** | The claim to evaluate against. [Learn more](/docs/account?topic&#x3D;account-iam-condition-properties&amp;interface&#x3D;ui#cr-attribute-names). |  |
| **operator** | **String** | The operation to perform on the claim. valid values are EQUALS, NOT_EQUALS, EQUALS_IGNORE_CASE, NOT_EQUALS_IGNORE_CASE, CONTAINS, IN |  |
| **value** | **String** | The stringified JSON value that the claim is compared to using the operator |  |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::ProfileClaimRuleConditions.new(
  claim: null,
  operator: null,
  value: null
)
```

