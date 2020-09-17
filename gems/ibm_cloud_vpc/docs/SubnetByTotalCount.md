# IbmCloudVpc::SubnetByTotalCount

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_ipv4_address_count** | **Integer** | The total number of IPv4 addresses required. Must be a power of 2. The VPC must have a default address prefix in the specified zone, and that prefix must have a free CIDR range with at least this number of addresses. | 
**zone** | [**ZoneIdentity**](ZoneIdentity.md) |  | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::SubnetByTotalCount.new(total_ipv4_address_count: 256,
                                 zone: null)
```


