# IbmCloudPower::PVMInstanceNetwork

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_ip** | **String** | The external ip address (for pub-vlan networks) | [optional] |
| **href** | **String** | Link to PVM Instance Network | [optional] |
| **ip** | **String** | (deprecated - replaced by ipAddress) | [optional] |
| **ip_address** | **String** | The ip address of this network interface | [optional] |
| **mac_address** | **String** | The mac address of the network interface | [optional] |
| **network_id** | **String** | ID of the network | [optional] |
| **network_name** | **String** | The name of the network the address is on | [optional] |
| **type** | **String** | The address type (fixed or dynamic) | [optional] |
| **version** | **Float** | The version of the information provided | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::PVMInstanceNetwork.new(
  external_ip: null,
  href: null,
  ip: null,
  ip_address: null,
  mac_address: null,
  network_id: null,
  network_name: null,
  type: null,
  version: null
)
```

