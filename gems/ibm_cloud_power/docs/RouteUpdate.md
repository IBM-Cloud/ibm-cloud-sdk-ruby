# IbmCloudPower::RouteUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** | Action | [optional] |
| **advertise** | **String** | Indicates if the route is advertised externally of the workspace to PER and\\or peer networks | [optional] |
| **destination** | **String** | The route destination | [optional] |
| **destination_type** | **String** | The destination type | [optional] |
| **enabled** | **Boolean** | Indicates if the route should be enabled in the fabric | [optional] |
| **name** | **String** | Name of the route | [optional] |
| **next_hop** | **String** | The next hop | [optional] |
| **next_hop_type** | **String** | The next hop type | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::RouteUpdate.new(
  action: null,
  advertise: null,
  destination: null,
  destination_type: null,
  enabled: null,
  name: null,
  next_hop: null,
  next_hop_type: null
)
```

