# IbmCloudVpc::FloatingIPPatch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The unique user-defined name for this floating IP | [optional] 
**target** | [**FloatingIPPatchTargetNetworkInterfaceIdentity**](FloatingIPPatchTargetNetworkInterfaceIdentity.md) |  | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::FloatingIPPatch.new(name: my-floating-ip,
                                 target: null)
```


