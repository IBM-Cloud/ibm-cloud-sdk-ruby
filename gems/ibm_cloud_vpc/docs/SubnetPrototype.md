# IbmCloudVpc::SubnetPrototype

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ip_version** | **String** | The IP version(s) to support for this subnet. | [optional] [default to &#39;ipv4&#39;]
**name** | **String** | The user-defined name for this subnet. Names must be unique within the VPC the subnet resides in. If unspecified, the name will be a hyphenated list of randomly-selected words. | [optional] 
**network_acl** | [**NetworkACLIdentity**](NetworkACLIdentity.md) | The network ACL to use for this subnet. If unspecified, the default network ACL for the VPC is used | [optional] 
**public_gateway** | [**PublicGatewayIdentity**](PublicGatewayIdentity.md) |  | [optional] 
**resource_group** | [**ResourceGroupIdentity**](ResourceGroupIdentity.md) |  | [optional] 
**vpc** | [**VPCIdentity**](VPCIdentity.md) |  | 
**total_ipv4_address_count** | **Integer** | The total number of IPv4 addresses required. Must be a power of 2. The VPC must have a default address prefix in the specified zone, and that prefix must have a free CIDR range with at least this number of addresses. | 
**zone** | [**ZoneIdentity**](ZoneIdentity.md) |  | 
**ipv4_cidr_block** | **String** | The IPv4 range of the subnet, expressed in CIDR format. The prefix length of the subnet&#39;s CIDR must be between &#x60;/8&#x60; (16,777,216 addresses) and &#x60;/29&#x60; (8 addresses). The IPv4 range of the subnet&#39;s CIDR must fall within an existing address prefix in the VPC. The subnet will be created in the zone of the address prefix that contains the IPv4 CIDR. If zone is specified, it must match the zone of the address prefix that contains the subnet&#39;s IPv4 CIDR. | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::SubnetPrototype.new(ip_version: ipv4,
                                 name: my-subnet,
                                 network_acl: null,
                                 public_gateway: null,
                                 resource_group: null,
                                 vpc: null,
                                 total_ipv4_address_count: 256,
                                 zone: null,
                                 ipv4_cidr_block: 10.0.0.0/24)
```

