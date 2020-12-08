# IbmCloudVpc::RoutingTableCollection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first** | [**PageLink**](PageLink.md) | A link to the first page of resources | 
**limit** | **Integer** | The maximum number of resources that can be returned by the request | 
**_next** | [**PageLink**](PageLink.md) | A link to the next page of resources. This property is present for all pages except the last page | [optional] 
**routing_tables** | [**Array&lt;RoutingTable&gt;**](RoutingTable.md) | Collection of routing tables | 
**total_count** | **Integer** | The total number of resources across all pages | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::RoutingTableCollection.new(first: null,
                                 limit: 20,
                                 _next: null,
                                 routing_tables: null,
                                 total_count: 132)
```


