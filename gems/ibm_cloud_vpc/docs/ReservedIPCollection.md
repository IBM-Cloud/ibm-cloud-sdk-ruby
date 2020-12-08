# IbmCloudVpc::ReservedIPCollection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first** | [**PageLink**](PageLink.md) | A link to the first page of resources | 
**limit** | **Integer** | The maximum number of resources that can be returned by the request | 
**_next** | [**PageLink**](PageLink.md) | A link to the next page of resources. This property is present for all pages except the last page | [optional] 
**reserved_ips** | [**Array&lt;ReservedIP&gt;**](ReservedIP.md) | Collection of reserved IPs in this subnet | 
**total_count** | **Integer** | The total number of resources across all pages | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::ReservedIPCollection.new(first: null,
                                 limit: 20,
                                 _next: null,
                                 reserved_ips: null,
                                 total_count: 132)
```


