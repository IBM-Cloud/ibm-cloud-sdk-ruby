# IbmCloudIam::IdentityLimitsUsageResponseServiceidsPerGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Maximum allowed service IDs per group |  |
| **serviceid_groups** | [**Array&lt;ServiceIdGroupCount&gt;**](ServiceIdGroupCount.md) | List of service ID groups with their usage counts | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::IdentityLimitsUsageResponseServiceidsPerGroup.new(
  limit: null,
  serviceid_groups: null
)
```

