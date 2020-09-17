# IbmCloudVpc::NetworkACLRuleCollection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first** | [**NetworkACLRuleCollectionFirst**](NetworkACLRuleCollectionFirst.md) |  | 
**limit** | **Integer** | The maximum number of resources that can be returned by the request | 
**_next** | [**NetworkACLRuleCollectionNext**](NetworkACLRuleCollectionNext.md) |  | [optional] 
**rules** | [**Array&lt;NetworkACLRuleItem&gt;**](NetworkACLRuleItem.md) | Ordered collection of Network ACL rules | 
**total_count** | **Integer** | The total number of resources across all pages | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::NetworkACLRuleCollection.new(first: null,
                                 limit: 20,
                                 _next: null,
                                 rules: null,
                                 total_count: 132)
```


