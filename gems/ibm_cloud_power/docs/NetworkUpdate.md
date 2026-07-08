# IbmCloudPower::NetworkUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **advertise** | **String** | Indicates if the network is advertised externally of the workspace to PER and\\or peer networks | [optional] |
| **arp_broadcast** | **String** | Indicates if the ARP broadcast is enabled | [optional] |
| **dns_servers** | **Array&lt;String&gt;** | Replaces the current DNS Servers | [optional] |
| **gateway** | **String** | Replaces the current Gateway IP Address | [optional] |
| **ip_address_ranges** | [**Array&lt;IPAddressRange&gt;**](IPAddressRange.md) | Replaces the current IP Address Ranges | [optional] |
| **name** | **String** | Replaces the current Network Name | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::NetworkUpdate.new(
  advertise: null,
  arp_broadcast: null,
  dns_servers: null,
  gateway: null,
  ip_address_ranges: null,
  name: null
)
```

