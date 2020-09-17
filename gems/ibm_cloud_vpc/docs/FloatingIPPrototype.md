# IbmCloudVpc::FloatingIPPrototype

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The unique user-defined name for this floating IP. If unspecified, the name will be a hyphenated list of randomly-selected words. | [optional] 
**resource_group** | [**ResourceGroupIdentity**](ResourceGroupIdentity.md) |  | [optional] 
**zone** | [**ZoneIdentity**](ZoneIdentity.md) |  | 
**target** | [**OneOfNetworkInterfaceIdentityByIdNetworkInterfaceIdentityByHref**](OneOfNetworkInterfaceIdentityByIdNetworkInterfaceIdentityByHref.md) | The network interface this floating IP is to be bound to. | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::FloatingIPPrototype.new(name: my-floating-ip,
                                 resource_group: null,
                                 zone: null,
                                 target: {&quot;id&quot;:&quot;69e55145-cc7d-4d8e-9e1f-cc3fb60b1793&quot;})
```


