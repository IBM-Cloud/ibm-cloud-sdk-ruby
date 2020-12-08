# IbmCloudVpc::LoadBalancerListenerPolicyRulePrototype

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**condition** | **String** | The condition of the rule. | 
**field** | **String** | HTTP header field. This is only applicable to \&quot;header\&quot; rule type. | [optional] 
**type** | **String** | The type of the rule. | 
**value** | **String** | Value to be matched for rule condition | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::LoadBalancerListenerPolicyRulePrototype.new(condition: null,
                                 field: MY-APP-HEADER,
                                 type: null,
                                 value: null)
```


