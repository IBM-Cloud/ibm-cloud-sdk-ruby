# IbmCloudIam::ProfileIdentitiesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity_tag** | **String** | Entity tag of the profile identities response | [optional] |
| **identities** | [**Array&lt;ProfileIdentityResponse&gt;**](ProfileIdentityResponse.md) | List of identities | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::ProfileIdentitiesResponse.new(
  entity_tag: null,
  identities: null
)
```

