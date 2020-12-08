# IbmCloudVpc::EndpointGatewayPrototype

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ips** | [**Array&lt;EndpointGatewayReservedIP&gt;**](EndpointGatewayReservedIP.md) | A list of reserved IPs to attach to this endpoint gateway. | [optional] 
**name** | **String** | The user-defined name for this endpoint gateway. If unspecified, the name will be a hyphenated list of randomly-selected words. Names must be unique within the VPC this endpoint gateway is serving. | [optional] 
**resource_group** | [**ResourceGroupIdentity**](ResourceGroupIdentity.md) |  | [optional] 
**target** | [**EndpointGatewayTargetPrototype**](EndpointGatewayTargetPrototype.md) |  | 
**vpc** | [**VPCIdentity**](VPCIdentity.md) |  | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::EndpointGatewayPrototype.new(ips: null,
                                 name: my-endpoint-gateway,
                                 resource_group: null,
                                 target: null,
                                 vpc: null)
```


