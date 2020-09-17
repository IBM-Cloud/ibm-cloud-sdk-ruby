# IbmCloudVpc::PublicGatewayCollection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first** | [**PublicGatewayCollectionFirst**](PublicGatewayCollectionFirst.md) |  | 
**limit** | **Integer** | The maximum number of resources that can be returned by the request | 
**_next** | [**PublicGatewayCollectionNext**](PublicGatewayCollectionNext.md) |  | [optional] 
**public_gateways** | [**Array&lt;PublicGateway&gt;**](PublicGateway.md) | Collection of public gateways | 
**total_count** | **Integer** | The total number of resources across all pages | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::PublicGatewayCollection.new(first: null,
                                 limit: 20,
                                 _next: null,
                                 public_gateways: null,
                                 total_count: 132)
```


