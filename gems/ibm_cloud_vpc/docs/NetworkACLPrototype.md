# IbmCloudVpc::NetworkACLPrototype

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The user-defined name for this network ACL. Names must be unique within the VPC the network ACL resides in. If unspecified, the name will be a hyphenated list of randomly-selected words. | [optional] 
**resource_group** | [**ResourceGroupIdentity**](ResourceGroupIdentity.md) |  | [optional] 
**vpc** | [**VPCIdentity**](VPCIdentity.md) |  | 
**rules** | [**Array&lt;NetworkACLRulePrototypeNetworkACLContext&gt;**](NetworkACLRulePrototypeNetworkACLContext.md) | Array of prototype objects for rules to create along with this network ACL. If unspecified, no rules will be created, resulting in all traffic being denied. | [optional] 
**source_network_acl** | [**NetworkACLIdentity**](NetworkACLIdentity.md) |  | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::NetworkACLPrototype.new(name: my-network-acl,
                                 resource_group: null,
                                 vpc: null,
                                 rules: null,
                                 source_network_acl: null)
```


