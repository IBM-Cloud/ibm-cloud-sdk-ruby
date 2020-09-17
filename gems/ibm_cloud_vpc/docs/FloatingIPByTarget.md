# IbmCloudVpc::FloatingIPByTarget

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**target** | [**OneOfNetworkInterfaceIdentityByIdNetworkInterfaceIdentityByHref**](OneOfNetworkInterfaceIdentityByIdNetworkInterfaceIdentityByHref.md) | The network interface this floating IP is to be bound to. | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::FloatingIPByTarget.new(target: {&quot;id&quot;:&quot;69e55145-cc7d-4d8e-9e1f-cc3fb60b1793&quot;})
```


