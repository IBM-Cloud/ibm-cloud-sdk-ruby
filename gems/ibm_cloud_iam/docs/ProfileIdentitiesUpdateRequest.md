# IbmCloudIam::ProfileIdentitiesUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identities** | [**Array&lt;ProfileIdentityRequest&gt;**](ProfileIdentityRequest.md) | List of identities that can assume the trusted profile | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::ProfileIdentitiesUpdateRequest.new(
  identities: null
)
```

