# IbmCloudVpc::ReservedIPCollectionEndpointGatewayContext

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first** | [**PageLink**](PageLink.md) | A link to the first page of resources | 
**ips** | [**Array&lt;ReservedIP&gt;**](ReservedIP.md) | Collection of reserved IPs bound to an endpoint gateway | 
**limit** | **Integer** | The maximum number of resources that can be returned by the request | 
**_next** | [**PageLink**](PageLink.md) | A link to the next page of resources. This property is present for all pages except the last page | [optional] 
**total_count** | **Integer** | The total number of resources across all pages | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::ReservedIPCollectionEndpointGatewayContext.new(first: null,
                                 ips: null,
                                 limit: 20,
                                 _next: null,
                                 total_count: 132)
```


