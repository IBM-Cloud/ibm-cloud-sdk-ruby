# IbmCloudVpc::LoadBalancerListenerPolicyRulePatch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**condition** | **String** | The condition of the rule. | [optional] 
**field** | **String** | HTTP header field. This is only applicable to \&quot;header\&quot; rule type. | [optional] 
**type** | **String** | The type of the rule. | [optional] 
**value** | **String** | Value to be matched for rule condition | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::LoadBalancerListenerPolicyRulePatch.new(condition: null,
                                 field: MY-APP-HEADER,
                                 type: null,
                                 value: null)
```


