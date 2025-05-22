# IbmCloudPower::NetworkSecurityGroupMember

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the member in a Network Security Group |  |
| **mac_address** | **String** | The mac address of a Network Interface included if the type is network-interface | [optional] |
| **network_interface_network_id** | **String** | The network ID of a Network Interface included if the type is network-interface | [optional] |
| **target** | **String** | If ipv4-address type, then IPv4 address or if network-interface type, then network interface ID |  |
| **type** | **String** | The type of member |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::NetworkSecurityGroupMember.new(
  id: null,
  mac_address: null,
  network_interface_network_id: null,
  target: null,
  type: null
)
```

