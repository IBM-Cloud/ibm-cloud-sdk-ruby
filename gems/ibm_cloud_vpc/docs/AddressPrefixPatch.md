# IbmCloudVpc::AddressPrefixPatch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**is_default** | **Boolean** | Indicates whether this is the default prefix for this zone in this VPC. Updating to true makes this prefix the default prefix for this zone in this VPC, provided the VPC currently has no default address prefix for this zone. Updating to false removes the default prefix for this zone in this VPC. | [optional] 
**name** | **String** | The user-defined name for this address prefix. Names must be unique within the VPC the address prefix resides in. | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::AddressPrefixPatch.new(is_default: false,
                                 name: my-address-prefix-2)
```


