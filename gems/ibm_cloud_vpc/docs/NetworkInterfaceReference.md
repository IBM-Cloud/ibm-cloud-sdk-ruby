# IbmCloudVpc::NetworkInterfaceReference

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**deleted** | [**Deleted**](Deleted.md) |  | [optional] 
**href** | **String** | The URL for this network interface | 
**id** | **String** | The unique identifier for this network interface | 
**name** | **String** | The user-defined name for this network interface | 
**primary_ipv4_address** | **String** | The primary IPv4 address | 
**resource_type** | **String** | The resource type | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::NetworkInterfaceReference.new(deleted: null,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/instances/1e09281b-f177-46fb-baf1-bc152b2e391a/network_interfaces/10c02d81-0ecb-4dc5-897d-28392913b81e,
                                 id: 10c02d81-0ecb-4dc5-897d-28392913b81e,
                                 name: my-network-interface,
                                 primary_ipv4_address: 192.168.3.4,
                                 resource_type: null)
```


