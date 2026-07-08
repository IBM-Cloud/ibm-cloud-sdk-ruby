# IbmCloudIam::CreateServiceIdGroupRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | ID of the account the service ID group belongs to. |  |
| **name** | **String** | Name of the service ID group. Unique in the account. |  |
| **description** | **String** | Description of the service ID group. | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::CreateServiceIdGroupRequest.new(
  account_id: null,
  name: null,
  description: null
)
```

