# IbmCloudPower::EventUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Email of the User | [optional] |
| **name** | **String** | Name of the User | [optional] |
| **user_id** | **String** | ID of user who created/caused the event |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::EventUser.new(
  email: null,
  name: null,
  user_id: null
)
```

