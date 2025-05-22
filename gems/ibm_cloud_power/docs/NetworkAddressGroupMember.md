# IbmCloudPower::NetworkAddressGroupMember

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cidr** | **String** | The IP addresses in CIDR notation for example 192.168.1.5/32 |  |
| **id** | **String** | The id of the Network Address Group member IP addresses |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::NetworkAddressGroupMember.new(
  cidr: null,
  id: null
)
```

