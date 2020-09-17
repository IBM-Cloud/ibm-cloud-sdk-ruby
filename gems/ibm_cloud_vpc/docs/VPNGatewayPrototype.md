# IbmCloudVpc::VPNGatewayPrototype

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The user-defined name for this VPN gateway | [optional] 
**resource_group** | [**ResourceGroupIdentity**](ResourceGroupIdentity.md) |  | [optional] 
**subnet** | [**SubnetIdentity**](SubnetIdentity.md) |  | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::VPNGatewayPrototype.new(name: my-vpn-gateway,
                                 resource_group: null,
                                 subnet: null)
```


