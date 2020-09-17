# IbmCloudVpc::NetworkInterfaceCollection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first** | [**NetworkInterfaceCollectionFirst**](NetworkInterfaceCollectionFirst.md) |  | 
**limit** | **Integer** | The maximum number of resources that can be returned by the request | 
**network_interfaces** | [**Array&lt;NetworkInterface&gt;**](NetworkInterface.md) | Collection of network interfaces | 
**_next** | [**NetworkInterfaceCollectionNext**](NetworkInterfaceCollectionNext.md) |  | [optional] 
**total_count** | **Integer** | The total number of resources across all pages | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::NetworkInterfaceCollection.new(first: null,
                                 limit: 20,
                                 network_interfaces: null,
                                 _next: null,
                                 total_count: 132)
```


