# IbmCloudVpc::AddressPrefix

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cidr** | **String** | The CIDR block for this prefix | 
**created_at** | **DateTime** | The date and time that the prefix was created | 
**has_subnets** | **Boolean** | Indicates whether subnets exist with addresses from this prefix. | 
**href** | **String** | The URL for this address prefix | 
**id** | **String** | The unique identifier for this address prefix | 
**is_default** | **Boolean** | Indicates whether this is the default prefix for this zone in this VPC. If a default prefix was automatically created when the VPC was created, the prefix is automatically named using a hyphenated list of randomly-selected words, but may be updated with a user-specified name. | 
**name** | **String** | The user-defined name for this address prefix. Names must be unique within the VPC the address prefix resides in. | 
**zone** | [**ZoneReference**](ZoneReference.md) |  | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::AddressPrefix.new(cidr: 192.168.3.0/24,
                                 created_at: null,
                                 has_subnets: null,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/vpcs/8e454ead-0db7-48ac-9a8b-2698d8c470a7/address_prefixes/1a15dca5-7e33-45e1-b7c5-bc690e569531,
                                 id: 1a15dca5-7e33-45e1-b7c5-bc690e569531,
                                 is_default: false,
                                 name: my-address-prefix-2,
                                 zone: null)
```


