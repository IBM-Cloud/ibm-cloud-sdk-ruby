# IbmCloudPower::PVMInstanceAddNetwork

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ip_address** | **String** | The requested ip address of this network interface | [optional] |
| **network_id** | **String** | ID of the network |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::PVMInstanceAddNetwork.new(
  ip_address: null,
  network_id: null
)
```

