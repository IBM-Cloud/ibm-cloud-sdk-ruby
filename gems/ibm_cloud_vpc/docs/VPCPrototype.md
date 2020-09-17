# IbmCloudVpc::VPCPrototype

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address_prefix_management** | **String** | Indicates whether a default address prefix should be automatically created for each zone in this VPC. If &#x60;manual&#x60;, this VPC will be created with no default address prefixes. | [optional] [default to &#39;auto&#39;]
**classic_access** | **Boolean** | Indicates whether this VPC should be connected to Classic Infrastructure. If true, this VPC&#39;s resources will have private network connectivity to the account&#39;s Classic Infrastructure resources. Only one VPC, per region, may be connected in this way. This value is set at creation and subsequently immutable. | [optional] [default to false]
**name** | **String** | The unique user-defined name for this VPC. If unspecified, the name will be a hyphenated list of randomly-selected words. | [optional] 
**resource_group** | [**ResourceGroupIdentity**](ResourceGroupIdentity.md) |  | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::VPCPrototype.new(address_prefix_management: manual,
                                 classic_access: false,
                                 name: my-vpc,
                                 resource_group: null)
```


