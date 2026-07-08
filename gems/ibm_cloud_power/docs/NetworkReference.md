# IbmCloudPower::NetworkReference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_config** | [**AccessConfig**](AccessConfig.md) |  | [optional] |
| **advertise** | **String** | Indicates if the network is advertised externally of the workspace to PER and\\or peer networks | [optional] |
| **arp_broadcast** | **String** | Indicates if the ARP broadcast is enabled | [optional] |
| **crn** | **String** | The CRN for this resource | [optional] |
| **dhcp_managed** | **Boolean** | DHCP Enabled Network | [optional] |
| **href** | **String** | Link to Network resource |  |
| **jumbo** | **Boolean** | (deprecated - replaced by mtu) Enable MTU Jumbo Network (for multi-zone locations only) | [optional] |
| **mtu** | **Integer** | Maximum transmission unit | [optional] |
| **name** | **String** | Network Name |  |
| **network_id** | **String** | Unique Network ID |  |
| **type** | **String** | Type of Network - &#39;vlan&#39; (private network) &#39;pub-vlan&#39; (public network) &#39;dhcp-vlan&#39; (for satellite locations only) | [default to &#39;vlan&#39;] |
| **vlan_id** | **Float** | VLAN ID |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::NetworkReference.new(
  access_config: null,
  advertise: null,
  arp_broadcast: null,
  crn: null,
  dhcp_managed: null,
  href: null,
  jumbo: null,
  mtu: null,
  name: null,
  network_id: null,
  type: null,
  vlan_id: null
)
```

