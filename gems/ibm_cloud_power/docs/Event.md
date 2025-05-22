# IbmCloudPower::Event

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** | Type of action for this event |  |
| **event_id** | **String** | ID of the Activity |  |
| **level** | **String** | Level of the event (notice, info, warning, error) |  |
| **message** | **String** | The (translated) message of the event |  |
| **metadata** | **Object** | Any metadata associated with the event | [optional] |
| **resource** | **String** | Type of resource for this event |  |
| **time** | **Time** | Time of activity in ISO 8601 - RFC3339 |  |
| **timestamp** | **Integer** | Time of activity in unix epoch |  |
| **user** | [**EventUser**](EventUser.md) |  | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::Event.new(
  action: null,
  event_id: null,
  level: null,
  message: null,
  metadata: null,
  resource: null,
  time: null,
  timestamp: null,
  user: null
)
```

