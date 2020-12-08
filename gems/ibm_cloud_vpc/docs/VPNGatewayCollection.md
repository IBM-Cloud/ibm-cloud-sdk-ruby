# IbmCloudVpc::VPNGatewayCollection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first** | [**PageLink**](PageLink.md) | A link to the first page of resources | 
**limit** | **Integer** | The maximum number of resources that can be returned by the request | 
**_next** | [**PageLink**](PageLink.md) | A link to the next page of resources. This property is present for all pages except the last page | [optional] 
**total_count** | **Integer** | The total number of resources across all pages | 
**vpn_gateways** | [**Array&lt;VPNGateway&gt;**](VPNGateway.md) | Collection of VPN gateways | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::VPNGatewayCollection.new(first: null,
                                 limit: 20,
                                 _next: null,
                                 total_count: 132,
                                 vpn_gateways: null)
```


