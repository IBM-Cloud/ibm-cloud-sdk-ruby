# IbmCloudPower::Event

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**event_id** | **String** | ID of the Activity | 
**time** | **DateTime** | Time of activity in ISO 8601 - RFC3339 | 
**timestamp** | **Integer** | Time of activity in unix epoch | 
**user** | [**EventUser**](EventUser.md) |  | [optional] 
**level** | **String** | Level of the event (notice, info, warning, error) | 
**resource** | **String** | Type of resource for this event | 
**action** | **String** | Type of action for this event | 
**message** | **String** | The (translated) message of the event | 
**metadata** | **Object** | Any metadata associated with the event | [optional] 

## Code Sample

```ruby
require 'IbmCloudPower'

instance = IbmCloudPower::Event.new(event_id: null,
                                 time: null,
                                 timestamp: null,
                                 user: null,
                                 level: null,
                                 resource: null,
                                 action: null,
                                 message: null,
                                 metadata: null)
```


