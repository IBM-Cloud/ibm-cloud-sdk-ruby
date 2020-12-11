# IbmCloudVpc::IPsecPolicyCollection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first** | [**PageLink**](PageLink.md) | A link to the first page of resources | 
**ipsec_policies** | [**Array&lt;IPsecPolicy&gt;**](IPsecPolicy.md) | Collection of IPsec policies | 
**limit** | **Integer** | The maximum number of resources that can be returned by the request | 
**_next** | [**PageLink**](PageLink.md) | A link to the next page of resources. This property is present for all pages except the last page | [optional] 
**total_count** | **Integer** | The total number of resources across all pages | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::IPsecPolicyCollection.new(first: null,
                                 ipsec_policies: null,
                                 limit: 20,
                                 _next: null,
                                 total_count: 132)
```


