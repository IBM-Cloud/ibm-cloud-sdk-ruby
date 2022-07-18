# IbmCloudPower::NetworkPort

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **port_id** | **String** | The unique Port ID |  |
| **description** | **String** | The description of the port (not unique or indexable) |  |
| **status** | **String** | Te |  |
| **mac_address** | **String** | The mac address of the network interface |  |
| **ip_address** | **String** | The ip address of this port |  |
| **external_ip** | **String** | The external ip address (for pub-vlan networks) | [optional] |
| **pvm_instance** | [**NetworkPortPvmInstance**](NetworkPortPvmInstance.md) |  | [optional] |
| **href** | **String** | Link to port resource | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::NetworkPort.new(
  port_id: null,
  description: null,
  status: null,
  mac_address: null,
  ip_address: null,
  external_ip: null,
  pvm_instance: null,
  href: null
)
```

