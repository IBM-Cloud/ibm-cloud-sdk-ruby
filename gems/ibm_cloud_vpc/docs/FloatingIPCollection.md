# IbmCloudVpc::FloatingIPCollection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first** | [**PageLink**](PageLink.md) | A link to the first page of resources | 
**floating_ips** | [**Array&lt;FloatingIP&gt;**](FloatingIP.md) | Collection of floating IPs | 
**limit** | **Integer** | The maximum number of resources that can be returned by the request | 
**_next** | [**PageLink**](PageLink.md) | A link to the next page of resources. This property is present for all pages except the last page | [optional] 
**total_count** | **Integer** | The total number of resources across all pages | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::FloatingIPCollection.new(first: null,
                                 floating_ips: null,
                                 limit: 20,
                                 _next: null,
                                 total_count: 132)
```


