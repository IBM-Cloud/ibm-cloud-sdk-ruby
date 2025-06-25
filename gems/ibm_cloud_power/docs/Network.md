# IbmCloudPower::Network

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_config** | [**AccessConfig**](AccessConfig.md) |  | [optional] |
| **cidr** | **String** | Network in CIDR notation (192.168.0.0/24) |  |
| **cloud_connections** | [**Array&lt;NetworkCloudConnections&gt;**](NetworkCloudConnections.md) | (currently not available) cloud connections this network is attached | [optional] |
| **crn** | **String** |  | [optional] |
| **dhcp_managed** | **Boolean** | DHCP Managed Network | [optional] |
| **dns_servers** | **Array&lt;String&gt;** | DNS Servers |  |
| **gateway** | **String** | Gateway IP Address | [optional] |
| **ip_address_metrics** | [**NetworkIpAddressMetrics**](NetworkIpAddressMetrics.md) |  |  |
| **ip_address_ranges** | [**Array&lt;IPAddressRange&gt;**](IPAddressRange.md) | IP Address Ranges |  |
| **jumbo** | **Boolean** | (deprecated - replaced by mtu) Enable MTU Jumbo Network (for multi-zone locations only) | [optional] |
| **mtu** | **Integer** | Maximum transmission unit | [optional] |
| **name** | **String** | Network Name |  |
| **network_id** | **String** | Unique Network ID |  |
| **public_ip_address_ranges** | [**Array&lt;IPAddressRange&gt;**](IPAddressRange.md) | Public IP Address Ranges (for pub-vlan networks) | [optional] |
| **type** | **String** | Type of Network - &#39;vlan&#39; (private network) &#39;pub-vlan&#39; (public network) &#39;dhcp-vlan&#39; (for satellite locations only) | [default to &#39;vlan&#39;] |
| **vlan_id** | **Float** | VLAN ID |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::Network.new(
  access_config: null,
  cidr: null,
  cloud_connections: null,
  crn: null,
  dhcp_managed: null,
  dns_servers: null,
  gateway: null,
  ip_address_metrics: null,
  ip_address_ranges: null,
  jumbo: null,
  mtu: null,
  name: null,
  network_id: null,
  public_ip_address_ranges: null,
  type: null,
  vlan_id: null
)
```

