# IbmCloudVpc::Subnet

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**available_ipv4_address_count** | **Integer** | The number of IPv4 addresses in this subnet that are not in-use, and have not been reserved by the user or the provider. | 
**created_at** | **DateTime** | The date and time that the subnet was created | 
**crn** | **String** | The CRN for this subnet | 
**href** | **String** | The URL for this subnet | 
**id** | **String** | The unique identifier for this subnet | 
**ip_version** | **String** | The IP version(s) supported by this subnet | 
**ipv4_cidr_block** | **String** | The IPv4 range of the subnet, expressed in CIDR format | 
**name** | **String** | The user-defined name for this subnet | 
**network_acl** | [**NetworkACLReference**](NetworkACLReference.md) |  | 
**public_gateway** | [**PublicGatewayReference**](PublicGatewayReference.md) |  | [optional] 
**resource_group** | [**ResourceGroupReference**](ResourceGroupReference.md) |  | 
**routing_table** | [**RoutingTableReference**](RoutingTableReference.md) | The routing table for this subnet | 
**status** | **String** | The status of the subnet | 
**total_ipv4_address_count** | **Integer** | The total number of IPv4 addresses in this subnet.  Note: This is calculated as 2&lt;sup&gt;(32 − prefix length)&lt;/sup&gt;. For example, the prefix length &#x60;/24&#x60; gives:&lt;br&gt; 2&lt;sup&gt;(32 − 24)&lt;/sup&gt; &#x3D; 2&lt;sup&gt;8&lt;/sup&gt; &#x3D; 256 addresses. | 
**vpc** | [**VPCReference**](VPCReference.md) |  | 
**zone** | [**ZoneReference**](ZoneReference.md) |  | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::Subnet.new(available_ipv4_address_count: 15,
                                 created_at: null,
                                 crn: crn:v1:bluemix:public:is:us-south-1:a/123456::subnet:7ec86020-1c6e-4889-b3f0-a15f2e50f87e,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/subnets/7ec86020-1c6e-4889-b3f0-a15f2e50f87e,
                                 id: 7ec86020-1c6e-4889-b3f0-a15f2e50f87e,
                                 ip_version: ipv4,
                                 ipv4_cidr_block: 10.0.0.0/24,
                                 name: my-subnet,
                                 network_acl: null,
                                 public_gateway: null,
                                 resource_group: null,
                                 routing_table: null,
                                 status: available,
                                 total_ipv4_address_count: 256,
                                 vpc: null,
                                 zone: null)
```


