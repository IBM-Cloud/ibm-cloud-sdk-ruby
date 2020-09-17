# IbmCloudVpc::LoadBalancerProfileCollection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first** | [**LoadBalancerProfileCollectionFirst**](LoadBalancerProfileCollectionFirst.md) |  | 
**limit** | **Integer** | The maximum number of resources that can be returned by the request | 
**_next** | [**LoadBalancerProfileCollectionNext**](LoadBalancerProfileCollectionNext.md) |  | [optional] 
**profiles** | [**Array&lt;LoadBalancerProfile&gt;**](LoadBalancerProfile.md) | Collection of load balancer profiles | 
**total_count** | **Integer** | The total number of resources across all pages | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::LoadBalancerProfileCollection.new(first: null,
                                 limit: 20,
                                 _next: null,
                                 profiles: null,
                                 total_count: 132)
```


