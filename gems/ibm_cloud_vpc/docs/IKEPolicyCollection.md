# IbmCloudVpc::IKEPolicyCollection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first** | [**IKEPolicyCollectionFirst**](IKEPolicyCollectionFirst.md) |  | 
**ike_policies** | [**Array&lt;IKEPolicy&gt;**](IKEPolicy.md) | Collection of IKE policies | 
**limit** | **Integer** | The maximum number of resources that can be returned by the request | 
**_next** | [**IKEPolicyCollectionNext**](IKEPolicyCollectionNext.md) |  | [optional] 
**total_count** | **Integer** | The total number of resources across all pages | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::IKEPolicyCollection.new(first: null,
                                 ike_policies: null,
                                 limit: 20,
                                 _next: null,
                                 total_count: 132)
```


