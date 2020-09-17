# IbmCloudVpc::InstanceGroupCollection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first** | [**InstanceGroupCollectionFirst**](InstanceGroupCollectionFirst.md) |  | 
**instance_groups** | [**Array&lt;InstanceGroup&gt;**](InstanceGroup.md) | Collection of instance groups | 
**limit** | **Integer** | The maximum number of resources that can be returned by the request | 
**_next** | [**InstanceGroupCollectionNext**](InstanceGroupCollectionNext.md) |  | [optional] 
**total_count** | **Integer** | The total number of resources across all pages | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::InstanceGroupCollection.new(first: null,
                                 instance_groups: null,
                                 limit: 20,
                                 _next: null,
                                 total_count: 132)
```


