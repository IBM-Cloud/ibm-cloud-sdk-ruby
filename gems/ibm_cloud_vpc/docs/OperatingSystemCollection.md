# IbmCloudVpc::OperatingSystemCollection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first** | [**OperatingSystemCollectionFirst**](OperatingSystemCollectionFirst.md) |  | 
**limit** | **Integer** | The maximum number of resources that can be returned by the request | 
**_next** | [**OperatingSystemCollectionNext**](OperatingSystemCollectionNext.md) |  | [optional] 
**operating_systems** | [**Array&lt;OperatingSystem&gt;**](OperatingSystem.md) | Collection of operating systems | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::OperatingSystemCollection.new(first: null,
                                 limit: 20,
                                 _next: null,
                                 operating_systems: null)
```


