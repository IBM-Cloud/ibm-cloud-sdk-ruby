# IbmCloudPower::RouteCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** | Action | [optional][default to &#39;deliver&#39;] |
| **advertise** | **String** | Indicates if the route is advertised externally of the workspace to PER and\\or peer networks | [optional][default to &#39;enable&#39;] |
| **destination** | **String** | The route destination |  |
| **destination_type** | **String** | The destination type | [optional][default to &#39;ipv4-address&#39;] |
| **enabled** | **Boolean** | Indicates if the route should be enabled in the fabric | [optional][default to false] |
| **name** | **String** | Name of the route |  |
| **next_hop** | **String** | The next hop |  |
| **next_hop_type** | **String** | The next hop type | [optional][default to &#39;ipv4-address&#39;] |
| **user_tags** | **Array&lt;String&gt;** | List of user tags | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::RouteCreate.new(
  action: null,
  advertise: null,
  destination: null,
  destination_type: null,
  enabled: null,
  name: null,
  next_hop: null,
  next_hop_type: null,
  user_tags: null
)
```

