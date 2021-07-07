# IbmCloudPower::CloudConnectionGRETunnel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**source_ip_address** | **String** | gre auto-assigned source IP address | [optional] 
**dest_ip_address** | **String** | gre destination IP address | 
**cidr** | **String** | gre network in CIDR notation (192.168.0.0/24) | 

## Code Sample

```ruby
require 'IbmCloudPower'

instance = IbmCloudPower::CloudConnectionGRETunnel.new(source_ip_address: null,
                                 dest_ip_address: null,
                                 cidr: null)
```


