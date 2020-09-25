# IbmCloudVpc::NetworkInterfaceReferenceTargetContext

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**href** | **String** | The URL for this network interface | 
**id** | **String** | The unique identifier for this network interface | 
**name** | **String** | The user-defined name for this network interface | 
**resource_type** | **String** | The resource type | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::NetworkInterfaceReferenceTargetContext.new(href: https://us-south.iaas.cloud.ibm.com/v1/instances/1e09281b-f177-46fb-baf1-bc152b2e391a/network_interfaces/10c02d81-0ecb-4dc5-897d-28392913b81e,
                                 id: 10c02d81-0ecb-4dc5-897d-28392913b81e,
                                 name: my-network-interface,
                                 resource_type: null)
```

