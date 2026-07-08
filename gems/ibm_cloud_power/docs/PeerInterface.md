# IbmCloudPower::PeerInterface

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **device_id** | **String** | device ID of the peer interface |  |
| **name** | **String** | peer interface name |  |
| **peer_interface_id** | **String** | peer interface ID |  |
| **peer_type** | **String** | type of peer interface |  |
| **port_id** | **String** | port ID of the peer interface |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::PeerInterface.new(
  device_id: switch1,
  name: Peer121,
  peer_interface_id: 031ab7da-bca6-493f-ac55-1a2a26f19160,
  peer_type: interface,
  port_id: po10
)
```

