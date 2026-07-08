# IbmCloudPower::Route

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** | The route action |  |
| **advertise** | **String** | Indicates if the route is advertised externally of the workspace to PER and\\or peer networks |  |
| **crn** | **String** | The route&#39;s crn |  |
| **destination** | **String** | The route destination |  |
| **destination_type** | **String** | The destination type |  |
| **enabled** | **Boolean** | Indicates if the route should be enabled in the fabric |  |
| **id** | **String** | The unique route ID |  |
| **name** | **String** | Name of the route |  |
| **next_hop** | **String** | The next hop |  |
| **next_hop_type** | **String** | The next hop type |  |
| **state** | **String** | The state of the route |  |
| **user_tags** | **Array&lt;String&gt;** | List of user tags | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::Route.new(
  action: null,
  advertise: null,
  crn: null,
  destination: null,
  destination_type: null,
  enabled: null,
  id: null,
  name: null,
  next_hop: null,
  next_hop_type: null,
  state: null,
  user_tags: null
)
```

