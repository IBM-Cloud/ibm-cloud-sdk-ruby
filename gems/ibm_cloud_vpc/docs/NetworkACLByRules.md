# IbmCloudVpc::NetworkACLByRules

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rules** | [**Array&lt;NetworkACLRulePrototypeNetworkACLContext&gt;**](NetworkACLRulePrototypeNetworkACLContext.md) | Array of prototype objects for rules to create along with this network ACL. If unspecified, no rules will be created, resulting in all traffic being denied. | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::NetworkACLByRules.new(rules: null)
```


