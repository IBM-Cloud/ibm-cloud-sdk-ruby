# IbmCloudVpc::DefaultRoutingTable

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **DateTime** | The date and time that this routing table was created | 
**href** | **String** | The URL for this routing table | 
**id** | **String** | The unique identifier for this routing table | 
**is_default** | **Boolean** | Indicates whether this is the default routing table for this VPC | 
**lifecycle_state** | [**LifecycleState**](LifecycleState.md) |  | 
**name** | **String** | The name of the default routing table created for this VPC. The name will be a hyphenated list of randomly-selected words at creation, but may be user-specified with a subsequent request. | 
**resource_type** | **String** | The resource type | 
**route_direct_link_ingress** | **Boolean** | Indicates whether this routing table is used to route traffic that originates from [Direct Link](https://cloud.ibm.com/docs/dl/) to this VPC.  Incoming traffic will be routed according to the routing table with one exception: routes with an &#x60;action&#x60; of &#x60;deliver&#x60; are treated as &#x60;drop&#x60; unless the &#x60;next_hop&#x60; is an IP address within the VPC&#39;s address prefix ranges. Therefore, if an incoming packet matches a route with with a &#x60;next_hop&#x60; of an internet-bound IP address or a VPN gateway connection, the packet will be dropped. | 
**route_transit_gateway_ingress** | **Boolean** | Indicates whether this routing table is used to route traffic that originates from from [Transit Gateway](https://cloud.ibm.com/cloud/transit-gateway/) to this VPC.  Incoming traffic will be routed according to the routing table with one exception: routes with an &#x60;action&#x60; of &#x60;deliver&#x60; are treated as &#x60;drop&#x60; unless the &#x60;next_hop&#x60; is an IP address within the VPC&#39;s address prefix ranges. Therefore, if an incoming packet matches a route with with a &#x60;next_hop&#x60; of an internet-bound IP address or a VPN gateway connection, the packet will be dropped. | 
**route_vpc_zone_ingress** | **Boolean** | Indicates whether this routing table is used to route traffic that originates from subnets in other zones in this VPC.  Incoming traffic will be routed according to the routing table with one exception: routes with an &#x60;action&#x60; of &#x60;deliver&#x60; are treated as &#x60;drop&#x60; unless the &#x60;next_hop&#x60; is an IP address within the VPC&#39;s address prefix ranges. Therefore, if an incoming packet matches a route with with a &#x60;next_hop&#x60; of an internet-bound IP address or a VPN gateway connection, the packet will be dropped. | 
**routes** | [**Array&lt;RouteReference&gt;**](RouteReference.md) | The routes for the default routing table for this VPC. The table is created with no routes, but routes may be added, changed, or removed with a subsequent request. | 
**subnets** | [**Array&lt;SubnetReference&gt;**](SubnetReference.md) | The subnets to which this routing table is attached | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::DefaultRoutingTable.new(created_at: null,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/vpcs/982d72b7-db1b-4606-afb2-ed6bd4b0bed1/routing_tables/6885e83f-03b2-4603-8a86-db2a0f55c840,
                                 id: 1a15dca5-7e33-45e1-b7c5-bc690e569531,
                                 is_default: null,
                                 lifecycle_state: null,
                                 name: milled-easy-equine-machines,
                                 resource_type: null,
                                 route_direct_link_ingress: null,
                                 route_transit_gateway_ingress: null,
                                 route_vpc_zone_ingress: null,
                                 routes: null,
                                 subnets: null)
```


