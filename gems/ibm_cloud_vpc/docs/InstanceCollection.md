# IbmCloudVpc::InstanceCollection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first** | [**InstanceCollectionFirst**](InstanceCollectionFirst.md) |  | 
**instances** | [**Array&lt;Instance&gt;**](Instance.md) | Collection of virtual server instances | 
**limit** | **Integer** | The maximum number of resources that can be returned by the request | 
**_next** | [**InstanceCollectionNext**](InstanceCollectionNext.md) |  | [optional] 
**total_count** | **Integer** | The total number of resources across all pages | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::InstanceCollection.new(first: null,
                                 instances: null,
                                 limit: 20,
                                 _next: null,
                                 total_count: 132)
```

