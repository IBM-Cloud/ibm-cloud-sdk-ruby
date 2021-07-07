# IbmCloudPower::NetworkReference

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**network_id** | **String** | Unique Network ID | 
**name** | **String** | Network Name | 
**vlan_id** | **Float** | VLAN ID | 
**type** | **String** | Type of Network {vlan, pub-vlan} | [default to &#39;vlan&#39;]
**jumbo** | **Boolean** | MTU Jumbo Network enabled | 
**href** | **String** | Link to Network resource | 

## Code Sample

```ruby
require 'IbmCloudPower'

instance = IbmCloudPower::NetworkReference.new(network_id: null,
                                 name: null,
                                 vlan_id: null,
                                 type: null,
                                 jumbo: null,
                                 href: null)
```


