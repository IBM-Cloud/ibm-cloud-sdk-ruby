# IbmCloudPower::CloudConnectionUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | name of the cloud connection | [optional] |
| **speed** | **Integer** | speed of the cloud connection (speed in megabits per second) | [optional] |
| **global_routing** | **Boolean** | enable global routing for this cloud connection (default&#x3D;false) | [optional] |
| **metered** | **Boolean** | enable metered for this cloud connection (default&#x3D;false) | [optional] |
| **classic** | [**CloudConnectionEndpointClassic**](CloudConnectionEndpointClassic.md) |  | [optional] |
| **vpc** | [**CloudConnectionEndpointVPC**](CloudConnectionEndpointVPC.md) |  | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::CloudConnectionUpdate.new(
  name: null,
  speed: null,
  global_routing: null,
  metered: null,
  classic: null,
  vpc: null
)
```

