# IbmCloudVpc::SecurityGroupPrototype

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The user-defined name for this security group. If unspecified, the name will be a hyphenated list of randomly-selected words. Names must be unique within the VPC the security group resides in. | [optional] 
**resource_group** | [**ResourceGroupIdentity**](ResourceGroupIdentity.md) |  | [optional] 
**rules** | [**Array&lt;SecurityGroupRulePrototype&gt;**](SecurityGroupRulePrototype.md) | Array of rule prototype objects for rules to be created for this security group. If unspecified, no rules will be created, resulting in all traffic being denied. | [optional] 
**vpc** | [**VPCIdentity**](VPCIdentity.md) |  | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::SecurityGroupPrototype.new(name: my-security-group,
                                 resource_group: null,
                                 rules: null,
                                 vpc: null)
```


