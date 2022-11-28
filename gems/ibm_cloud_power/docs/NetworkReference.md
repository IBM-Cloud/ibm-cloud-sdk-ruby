# IbmCloudPower::NetworkReference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dhcp_managed** | **Boolean** | DHCP Managed Network | [optional] |
| **href** | **String** | Link to Network resource |  |
| **jumbo** | **Boolean** | MTU Jumbo Network enabled |  |
| **name** | **String** | Network Name |  |
| **network_id** | **String** | Unique Network ID |  |
| **type** | **String** | Type of Network {vlan, pub-vlan} | [default to &#39;vlan&#39;] |
| **vlan_id** | **Float** | VLAN ID |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::NetworkReference.new(
  dhcp_managed: null,
  href: null,
  jumbo: null,
  name: null,
  network_id: null,
  type: null,
  vlan_id: null
)
```

