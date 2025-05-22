# IbmCloudPower::NetworkAddressTranslation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_ip** | **String** | source IP address, required if network peer type is L3BGP or L3STATIC and if Network Address Translation (NAT) is enabled  | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::NetworkAddressTranslation.new(
  source_ip: null
)
```

