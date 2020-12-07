# IbmCloudPower::NetworkCreate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Network Name | [optional] 
**type** | **String** | Type of Network - &#39;vlan&#39; (private network) &#39;pub-vlan&#39; (public network) | [default to &#39;vlan&#39;]
**cidr** | **String** | Network in CIDR notation (192.168.0.0/24) | [optional] 
**gateway** | **String** | Gateway IP Address | [optional] 
**dns_servers** | **Array&lt;String&gt;** | DNS Servers | [optional] 
**ip_address_ranges** | [**Array&lt;IPAddressRange&gt;**](IPAddressRange.md) | IP Address Ranges | [optional] 
**jumbo** | **Boolean** | Enable MTU Jumbo Network | [optional] 

## Code Sample

```ruby
require 'IbmCloudPower'

instance = IbmCloudPower::NetworkCreate.new(name: null,
                                 type: null,
                                 cidr: null,
                                 gateway: null,
                                 dns_servers: null,
                                 ip_address_ranges: null,
                                 jumbo: null)
```


