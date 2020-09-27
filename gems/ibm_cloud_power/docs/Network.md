# IbmCloudPower::Network

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**network_id** | **String** | Unique Network ID | 
**name** | **String** | Network Name | 
**type** | **String** | Type of Network {pub-vlan, vlan, vxlan} | [default to &#39;vlan&#39;]
**vlan_id** | **Float** | VLAN ID | 
**cidr** | **String** | Network in CIDR notation (192.168.0.0/24) | 
**gateway** | **String** | Gateway IP Address | [optional] 
**dns_servers** | **Array&lt;String&gt;** | DNS Servers | 
**ip_address_ranges** | [**Array&lt;IPAddressRange&gt;**](IPAddressRange.md) | IP Address Ranges | 
**ip_address_metrics** | [**NetworkIpAddressMetrics**](NetworkIpAddressMetrics.md) |  | 
**public_ip_address_ranges** | [**Array&lt;IPAddressRange&gt;**](IPAddressRange.md) | Public IP Address Ranges (for pub-vlan networks) | [optional] 
**jumbo** | **Boolean** | MTU Jumbo Network enabled | 

## Code Sample

```ruby
require 'IbmCloudPower'

instance = IbmCloudPower::Network.new(network_id: null,
                                 name: null,
                                 type: null,
                                 vlan_id: null,
                                 cidr: null,
                                 gateway: null,
                                 dns_servers: null,
                                 ip_address_ranges: null,
                                 ip_address_metrics: null,
                                 public_ip_address_ranges: null,
                                 jumbo: null)
```


