# IbmCloudVpc::SubnetCollection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first** | [**SubnetCollectionFirst**](SubnetCollectionFirst.md) |  | 
**limit** | **Integer** | The maximum number of resources that can be returned by the request | 
**_next** | [**SubnetCollectionNext**](SubnetCollectionNext.md) |  | [optional] 
**subnets** | [**Array&lt;Subnet&gt;**](Subnet.md) | Collection of subnets | 
**total_count** | **Integer** | The total number of resources across all pages | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::SubnetCollection.new(first: null,
                                 limit: 20,
                                 _next: null,
                                 subnets: null,
                                 total_count: 132)
```


