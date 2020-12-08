# IbmCloudVpc::SubnetPatch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The user-defined name for this subnet. Names must be unique within the VPC the subnet resides in. | [optional] 
**network_acl** | [**NetworkACLIdentity**](NetworkACLIdentity.md) |  | [optional] 
**public_gateway** | [**PublicGatewayIdentity**](PublicGatewayIdentity.md) |  | [optional] 
**routing_table** | [**RoutingTableIdentity**](RoutingTableIdentity.md) | The routing table to use for this subnet.  The routing table properties &#x60;route_direct_link_ingress&#x60;, &#x60;route_transit_gateway_ingress&#x60;, and &#x60;route_vpc_zone_ingress&#x60; must be &#x60;false&#x60;. | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::SubnetPatch.new(name: my-subnet,
                                 network_acl: null,
                                 public_gateway: null,
                                 routing_table: {&quot;id&quot;:&quot;6885e83f-03b2-4603-8a86-db2a0f55c840&quot;})
```


