# IbmCloudPower::PVMInstanceAddNetwork

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_id** | **String** | ID of the network |  |
| **ip_address** | **String** | The requested ip address of this network interface | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::PVMInstanceAddNetwork.new(
  network_id: null,
  ip_address: null
)
```

