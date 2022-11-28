# IbmCloudPower::CloudConnectionCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **classic** | [**CloudConnectionEndpointClassicUpdate**](CloudConnectionEndpointClassicUpdate.md) |  | [optional] |
| **global_routing** | **Boolean** | enable global routing for this cloud connection (default&#x3D;false) | [optional] |
| **metered** | **Boolean** | enable metered for this cloud connection (default&#x3D;false) | [optional] |
| **name** | **String** | name of the cloud connection |  |
| **speed** | **Integer** | speed of the cloud connection (speed in megabits per second) |  |
| **subnets** | **Array&lt;String&gt;** | list of subnets to attach to cloud connection | [optional] |
| **transit_enabled** | **Boolean** | enable transit gateway for this cloud connection (default&#x3D;false) | [optional] |
| **vpc** | [**CloudConnectionEndpointVPC**](CloudConnectionEndpointVPC.md) |  | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::CloudConnectionCreate.new(
  classic: null,
  global_routing: null,
  metered: null,
  name: null,
  speed: null,
  subnets: null,
  transit_enabled: null,
  vpc: null
)
```

