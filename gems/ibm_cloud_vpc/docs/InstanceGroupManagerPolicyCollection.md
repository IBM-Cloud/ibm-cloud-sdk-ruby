# IbmCloudVpc::InstanceGroupManagerPolicyCollection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first** | [**InstanceGroupManagerPolicyCollectionFirst**](InstanceGroupManagerPolicyCollectionFirst.md) |  | 
**limit** | **Integer** | The maximum number of resources that can be returned by the request | 
**_next** | [**InstanceGroupManagerPolicyCollectionNext**](InstanceGroupManagerPolicyCollectionNext.md) |  | [optional] 
**policies** | [**Array&lt;InstanceGroupManagerPolicy&gt;**](InstanceGroupManagerPolicy.md) | Collection of instance group manager policies | 
**total_count** | **Integer** | The total number of resources across all pages | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::InstanceGroupManagerPolicyCollection.new(first: null,
                                 limit: 20,
                                 _next: null,
                                 policies: null,
                                 total_count: 132)
```


