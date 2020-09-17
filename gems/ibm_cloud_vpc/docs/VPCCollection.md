# IbmCloudVpc::VPCCollection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first** | [**VPCCollectionFirst**](VPCCollectionFirst.md) |  | 
**limit** | **Integer** | The maximum number of resources that can be returned by the request | 
**_next** | [**VPCCollectionNext**](VPCCollectionNext.md) |  | [optional] 
**total_count** | **Integer** | The total number of resources across all pages | 
**vpcs** | [**Array&lt;VPC&gt;**](VPC.md) | Collection of VPCs | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::VPCCollection.new(first: null,
                                 limit: 20,
                                 _next: null,
                                 total_count: 132,
                                 vpcs: null)
```


