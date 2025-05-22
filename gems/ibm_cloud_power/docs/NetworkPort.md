# IbmCloudPower::NetworkPort

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Description of the port (not unique or indexable) |  |
| **external_ip** | **String** | The external ip address (for pub-vlan networks) | [optional] |
| **href** | **String** | Link to port resource | [optional] |
| **ip_address** | **String** | The ip address of this port |  |
| **mac_address** | **String** | The mac address of the network interface |  |
| **port_id** | **String** | The unique Port ID |  |
| **pvm_instance** | [**NetworkPortPvmInstance**](NetworkPortPvmInstance.md) |  | [optional] |
| **status** | **String** | Te |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::NetworkPort.new(
  description: null,
  external_ip: null,
  href: null,
  ip_address: null,
  mac_address: null,
  port_id: null,
  pvm_instance: null,
  status: null
)
```

