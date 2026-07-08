# IbmCloudIam::CreateTrustedProfileRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the trusted profile. The name is checked for uniqueness. Therefore trusted profiles with the same names can not exist in the same account. |  |
| **description** | **String** | The optional description of the trusted profile. The &#39;description&#39; property is only available if a description was provided during creation of trusted profile. | [optional] |
| **account_id** | **String** | The account ID of the trusted profile. |  |
| **email** | **String** | The email of the trusted profile. | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::CreateTrustedProfileRequest.new(
  name: null,
  description: null,
  account_id: null,
  email: null
)
```

