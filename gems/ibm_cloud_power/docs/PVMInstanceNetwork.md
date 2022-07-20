# IbmCloudPower::PVMInstanceNetwork

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **Float** | The version of the information provided | [optional] |
| **network_id** | **String** | ID of the network | [optional] |
| **network_name** | **String** | The name of the network the address is on | [optional] |
| **mac_address** | **String** | The mac address of the network interface | [optional] |
| **type** | **String** | The address type (fixed or dynamic) | [optional] |
| **ip** | **String** | (deprecated - replaced by ipAddress) | [optional] |
| **ip_address** | **String** | The ip address of this network interface | [optional] |
| **external_ip** | **String** | The external ip address (for pub-vlan networks) | [optional] |
| **href** | **String** | Link to PVM Instance Network | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::PVMInstanceNetwork.new(
  version: null,
  network_id: null,
  network_name: null,
  mac_address: null,
  type: null,
  ip: null,
  ip_address: null,
  external_ip: null,
  href: null
)
```

