# IbmCloudPower::PVMInstanceV2NetworkPort

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique Port ID | [optional] |
| **ip_protocol** | **String** | Dynamic Host Configuration Protocol {IPv4, IPv6} | [optional] |
| **mac_address** | **String** | The mac address of the network interface | [optional] |
| **private_ip** | **String** | The private ip address | [optional] |
| **type** | **String** | The type of ip allocation {dhcp, static} | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::PVMInstanceV2NetworkPort.new(
  id: null,
  ip_protocol: null,
  mac_address: null,
  private_ip: null,
  type: null
)
```

