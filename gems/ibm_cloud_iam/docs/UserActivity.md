# IbmCloudIam::UserActivity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **iam_id** | **String** | IAMid of the user |  |
| **name** | **String** | Name of the user | [optional] |
| **username** | **String** | Username of the user |  |
| **email** | **String** | Email of the user | [optional] |
| **last_authn** | **String** | Time when the user was last authenticated. | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::UserActivity.new(
  iam_id: null,
  name: null,
  username: null,
  email: null,
  last_authn: null
)
```

