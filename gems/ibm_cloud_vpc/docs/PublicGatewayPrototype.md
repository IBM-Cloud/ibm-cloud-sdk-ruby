# IbmCloudVpc::PublicGatewayPrototype

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**floating_ip** | [**OneOfFloatingIPIdentityFloatingIPPrototypeTargetContext**](OneOfFloatingIPIdentityFloatingIPPrototypeTargetContext.md) |  | [optional] 
**name** | **String** | The user-defined name for this public gateway. Names must be unique within the VPC the public gateway resides in. If unspecified, the name will be a hyphenated list of randomly-selected words. | [optional] 
**resource_group** | [**ResourceGroupIdentity**](ResourceGroupIdentity.md) |  | [optional] 
**vpc** | [**VPCIdentity**](VPCIdentity.md) |  | 
**zone** | [**ZoneIdentity**](ZoneIdentity.md) |  | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::PublicGatewayPrototype.new(floating_ip: {&quot;address&quot;:&quot;203.0.113.1&quot;},
                                 name: my-public-gateway,
                                 resource_group: null,
                                 vpc: null,
                                 zone: null)
```


