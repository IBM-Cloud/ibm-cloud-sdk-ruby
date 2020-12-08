# IbmCloudVpc::SubnetByCIDR

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ipv4_cidr_block** | **String** | The IPv4 range of the subnet, expressed in CIDR format. The prefix length of the subnet&#39;s CIDR must be between &#x60;/9&#x60; (8,388,608 addresses) and &#x60;/29&#x60; (8 addresses). The IPv4 range of the subnet&#39;s CIDR must fall within an existing address prefix in the VPC. The subnet will be created in the zone of the address prefix that contains the IPv4 CIDR. If zone is specified, it must match the zone of the address prefix that contains the subnet&#39;s IPv4 CIDR. | 
**zone** | [**ZoneIdentity**](ZoneIdentity.md) |  | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::SubnetByCIDR.new(ipv4_cidr_block: 10.0.0.0/24,
                                 zone: null)
```


