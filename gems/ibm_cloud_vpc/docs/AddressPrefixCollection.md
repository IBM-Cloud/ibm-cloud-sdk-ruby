# IbmCloudVpc::AddressPrefixCollection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address_prefixes** | [**Array&lt;AddressPrefix&gt;**](AddressPrefix.md) | Collection of address prefixes | 
**first** | [**AddressPrefixCollectionFirst**](AddressPrefixCollectionFirst.md) |  | 
**limit** | **Integer** | The maximum number of resources that can be returned by the request | 
**_next** | [**AddressPrefixCollectionNext**](AddressPrefixCollectionNext.md) |  | [optional] 
**total_count** | **Integer** | The total number of resources across all pages | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::AddressPrefixCollection.new(address_prefixes: null,
                                 first: null,
                                 limit: 20,
                                 _next: null,
                                 total_count: 132)
```


