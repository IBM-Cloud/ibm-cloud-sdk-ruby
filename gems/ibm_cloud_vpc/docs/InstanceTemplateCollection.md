# IbmCloudVpc::InstanceTemplateCollection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first** | [**InstanceTemplateCollectionFirst**](InstanceTemplateCollectionFirst.md) |  | 
**limit** | **Integer** | The maximum number of resources that can be returned by the request | 
**_next** | [**InstanceTemplateCollectionNext**](InstanceTemplateCollectionNext.md) |  | [optional] 
**templates** | [**Array&lt;InstanceTemplate&gt;**](InstanceTemplate.md) | Collection of instance templates | 
**total_count** | **Integer** | The total number of resources across all pages | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::InstanceTemplateCollection.new(first: null,
                                 limit: 20,
                                 _next: null,
                                 templates: null,
                                 total_count: 132)
```


