# IbmCloudVpc::FloatingIPPrototype

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The unique user-defined name for this floating IP. If unspecified, the name will be a hyphenated list of randomly-selected words. | [optional] 
**resource_group** | [**ResourceGroupIdentity**](ResourceGroupIdentity.md) |  | [optional] 
**zone** | [**ZoneIdentity**](ZoneIdentity.md) |  | 
**target** | [**FloatingIPByTargetNetworkInterfaceIdentity**](FloatingIPByTargetNetworkInterfaceIdentity.md) |  | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::FloatingIPPrototype.new(name: my-floating-ip,
                                 resource_group: null,
                                 zone: null,
                                 target: null)
```


