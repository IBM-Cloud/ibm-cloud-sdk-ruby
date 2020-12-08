# IbmCloudVpc::AddressPrefixPrototype

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cidr** | **String** | The IPv4 range of the address prefix, expressed in CIDR format. The request must not overlap with any existing address prefixes in the VPC, and must fall within the [RFC 1918](https://tools.ietf.org/html/rfc1918) address ranges. The prefix length of the address prefix&#39;s CIDR must be between &#x60;/9&#x60; (8,388,608 addresses) and &#x60;/29&#x60; (8 addresses). | 
**is_default** | **Boolean** | Indicates whether this is the default prefix for this zone in this VPC. If true, this prefix will become the default prefix for this zone in this VPC. This fails if the VPC currently has a default address prefix for this zone. | [optional] [default to false]
**name** | **String** | The user-defined name for this address prefix. Names must be unique within the VPC the address prefix resides in. If unspecified, the name will be a hyphenated list of randomly-selected words. | [optional] 
**zone** | [**ZoneIdentity**](ZoneIdentity.md) |  | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::AddressPrefixPrototype.new(cidr: 10.0.0.0/24,
                                 is_default: true,
                                 name: my-address-prefix-2,
                                 zone: null)
```


