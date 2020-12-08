# IbmCloudVpc::RoutingTablePatch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The user-defined name for this routing table. Names must be unique within the VPC the routing table resides in. | [optional] 
**route_direct_link_ingress** | **Boolean** | Indicates whether this routing table is used to route traffic that originates from [Direct Link](https://cloud.ibm.com/docs/dl/) to this VPC. Updating to &#x60;true&#x60; selects this routing table, provided no other routing table in the VPC already has this property set to &#x60;true&#x60;, and no subnets are attached to this routing table. Updating to &#x60;false&#x60; deselects this routing table.  Incoming traffic will be routed according to the routing table with one exception: routes with an &#x60;action&#x60; of &#x60;deliver&#x60; are treated as &#x60;drop&#x60; unless the &#x60;next_hop&#x60; is an IP address within the VPC&#39;s address prefix ranges. Therefore, if an incoming packet matches a route with with a &#x60;next_hop&#x60; of an internet-bound IP address or a VPN gateway connection, the packet will be dropped. | [optional] 
**route_transit_gateway_ingress** | **Boolean** | Indicates whether this routing table is used to route traffic that originates from [Transit Gateway](https://cloud.ibm.com/cloud/transit-gateway/) to this VPC. Updating to &#x60;true&#x60; selects this routing table, provided no other routing table in the VPC already has this property set to &#x60;true&#x60;, and no subnets are attached to this routing table. Updating to &#x60;false&#x60; deselects this routing table.  Incoming traffic will be routed according to the routing table with one exception: routes with an &#x60;action&#x60; of &#x60;deliver&#x60; are treated as &#x60;drop&#x60; unless the &#x60;next_hop&#x60; is an IP address within the VPC&#39;s address prefix ranges. Therefore, if an incoming packet matches a route with with a &#x60;next_hop&#x60; of an internet-bound IP address or a VPN gateway connection, the packet will be dropped.  If [Classic Access](https://cloud.ibm.com/docs/vpc?topic&#x3D;vpc-setting-up-access-to-classic-infrastructure) is enabled for this VPC, and this property is set to &#x60;true&#x60;, its incoming traffic will also be routed according to this routing table. | [optional] 
**route_vpc_zone_ingress** | **Boolean** | Indicates whether this routing table is used to route traffic that originates from subnets in other zones in this VPC. Updating to &#x60;true&#x60; selects this routing table, provided no other routing table in the VPC already has this property set to &#x60;true&#x60;, and no subnets are attached to this routing table. Updating to &#x60;false&#x60; deselects this routing table.  Incoming traffic will be routed according to the routing table with one exception: routes with an &#x60;action&#x60; of &#x60;deliver&#x60; are treated as &#x60;drop&#x60; unless the &#x60;next_hop&#x60; is an IP address within the VPC&#39;s address prefix ranges. Therefore, if an incoming packet matches a route with with a &#x60;next_hop&#x60; of an internet-bound IP address or a VPN gateway connection, the packet will be dropped. | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::RoutingTablePatch.new(name: my-routing-table-2,
                                 route_direct_link_ingress: null,
                                 route_transit_gateway_ingress: null,
                                 route_vpc_zone_ingress: null)
```


