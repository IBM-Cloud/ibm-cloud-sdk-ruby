# IbmCloudVpc::InstanceGroupManagerCollection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first** | [**InstanceGroupManagerCollectionFirst**](InstanceGroupManagerCollectionFirst.md) |  | 
**limit** | **Integer** | The maximum number of resources that can be returned by the request | 
**managers** | [**Array&lt;InstanceGroupManager&gt;**](InstanceGroupManager.md) | Collection of instance group managers | 
**_next** | [**InstanceGroupManagerCollectionNext**](InstanceGroupManagerCollectionNext.md) |  | [optional] 
**total_count** | **Integer** | The total number of resources across all pages | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::InstanceGroupManagerCollection.new(first: null,
                                 limit: 20,
                                 managers: null,
                                 _next: null,
                                 total_count: 132)
```


