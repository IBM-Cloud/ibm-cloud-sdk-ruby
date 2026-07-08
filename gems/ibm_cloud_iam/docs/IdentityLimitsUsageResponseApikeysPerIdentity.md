# IbmCloudIam::IdentityLimitsUsageResponseApikeysPerIdentity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Maximum allowed API keys per identity |  |
| **identities** | [**Array&lt;IdentityCount&gt;**](IdentityCount.md) | List of identities with their API key usage counts | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::IdentityLimitsUsageResponseApikeysPerIdentity.new(
  limit: null,
  identities: null
)
```

