# IbmCloudPower::EventUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | ID of user who created/caused the event |  |
| **name** | **String** | Name of the User | [optional] |
| **email** | **String** | Email of the User | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::EventUser.new(
  user_id: null,
  name: null,
  email: null
)
```

