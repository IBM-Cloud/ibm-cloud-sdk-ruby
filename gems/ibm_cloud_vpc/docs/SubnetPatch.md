# IbmCloudVpc::SubnetPatch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The user-defined name for this subnet. Names must be unique within the VPC the subnet resides in. | [optional] 
**network_acl** | [**NetworkACLIdentity**](NetworkACLIdentity.md) |  | [optional] 
**public_gateway** | [**PublicGatewayIdentity**](PublicGatewayIdentity.md) |  | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::SubnetPatch.new(name: my-subnet,
                                 network_acl: null,
                                 public_gateway: null)
```


