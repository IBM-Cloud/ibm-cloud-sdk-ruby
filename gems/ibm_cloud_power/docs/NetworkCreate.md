# IbmCloudPower::NetworkCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_config** | [**AccessConfig**](AccessConfig.md) |  | [optional] |
| **cidr** | **String** | Network in CIDR notation (192.168.0.0/24) | [optional] |
| **dns_servers** | **Array&lt;String&gt;** | DNS Servers. If not specified, default is 127.0.0.1 for &#39;vlan&#39; (private network) and 9.9.9.9 for &#39;pub-vlan&#39; (public network) | [optional] |
| **gateway** | **String** | Gateway IP Address | [optional] |
| **ip_address_ranges** | [**Array&lt;IPAddressRange&gt;**](IPAddressRange.md) | IP Address Ranges | [optional] |
| **jumbo** | **Boolean** | (deprecated - replaced by mtu) Enable MTU Jumbo Network (for multi-zone locations only) | [optional] |
| **mtu** | **Integer** | Maximum transmission unit | [optional] |
| **name** | **String** | Network Name | [optional] |
| **type** | **String** | Type of Network - &#39;vlan&#39; (private network) &#39;pub-vlan&#39; (public network) &#39;dhcp-vlan&#39; (for satellite locations only) | [default to &#39;vlan&#39;] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::NetworkCreate.new(
  access_config: null,
  cidr: null,
  dns_servers: null,
  gateway: null,
  ip_address_ranges: null,
  jumbo: null,
  mtu: null,
  name: null,
  type: null
)
```

