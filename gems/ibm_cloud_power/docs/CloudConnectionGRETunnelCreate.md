# IbmCloudPower::CloudConnectionGRETunnelCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cidr** | **String** | gre network in CIDR notation (192.168.0.0/24) |  |
| **dest_ip_address** | **String** | gre destination IP address |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::CloudConnectionGRETunnelCreate.new(
  cidr: null,
  dest_ip_address: null
)
```

