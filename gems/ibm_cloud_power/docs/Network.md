# IbmCloudPower::Network

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cidr** | **String** | Network in CIDR notation (192.168.0.0/24) |  |
| **cloud_connections** | [**Array&lt;NetworkCloudConnectionsInner&gt;**](NetworkCloudConnectionsInner.md) | (currently not available) cloud connections this network is attached | [optional] |
| **dhcp_managed** | **Boolean** | DHCP Managed Network | [optional] |
| **dns_servers** | **Array&lt;String&gt;** | DNS Servers |  |
| **gateway** | **String** | Gateway IP Address | [optional] |
| **ip_address_metrics** | [**NetworkIpAddressMetrics**](NetworkIpAddressMetrics.md) |  |  |
| **ip_address_ranges** | [**Array&lt;IPAddressRange&gt;**](IPAddressRange.md) | IP Address Ranges |  |
| **jumbo** | **Boolean** | MTU Jumbo Network enabled |  |
| **name** | **String** | Network Name |  |
| **network_id** | **String** | Unique Network ID |  |
| **public_ip_address_ranges** | [**Array&lt;IPAddressRange&gt;**](IPAddressRange.md) | Public IP Address Ranges (for pub-vlan networks) | [optional] |
| **type** | **String** | Type of Network {vlan, pub-vlan} | [default to &#39;vlan&#39;] |
| **vlan_id** | **Float** | VLAN ID |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::Network.new(
  cidr: null,
  cloud_connections: null,
  dhcp_managed: null,
  dns_servers: null,
  gateway: null,
  ip_address_metrics: null,
  ip_address_ranges: null,
  jumbo: null,
  name: null,
  network_id: null,
  public_ip_address_ranges: null,
  type: null,
  vlan_id: null
)
```

