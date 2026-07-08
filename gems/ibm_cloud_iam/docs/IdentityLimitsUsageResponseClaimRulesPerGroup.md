# IbmCloudIam::IdentityLimitsUsageResponseClaimRulesPerGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Maximum allowed claim rules per access group |  |
| **access_groups** | [**Array&lt;AccessGroupCount&gt;**](AccessGroupCount.md) | List of access groups with their claim rules usage counts | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::IdentityLimitsUsageResponseClaimRulesPerGroup.new(
  limit: null,
  access_groups: null
)
```

