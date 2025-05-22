# IbmCloudPower::PVMInstanceRemoveNetwork

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mac_address** | **String** | The mac address of the network interface to be removed | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::PVMInstanceRemoveNetwork.new(
  mac_address: null
)
```

