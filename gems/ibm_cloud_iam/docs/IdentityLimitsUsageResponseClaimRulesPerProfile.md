# IbmCloudIam::IdentityLimitsUsageResponseClaimRulesPerProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Maximum allowed claim rules per profile |  |
| **profiles** | [**Array&lt;ProfileCount&gt;**](ProfileCount.md) | List of profiles with their claim rules usage counts | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::IdentityLimitsUsageResponseClaimRulesPerProfile.new(
  limit: null,
  profiles: null
)
```

