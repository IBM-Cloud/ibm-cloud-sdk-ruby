# IbmCloudPower::CloudConnectionGRETunnel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dest_ip_address** | **String** | gre destination IP address |  |
| **source_ip_address** | **String** | gre auto-assigned source IP address |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::CloudConnectionGRETunnel.new(
  dest_ip_address: null,
  source_ip_address: null
)
```

