# IbmCloudVpc::NetworkACLRuleProtocolICMP

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **Integer** | The ICMP traffic code to allow. If unspecified, all codes are allowed. This can only be specified if type is also specified. | [optional] 
**protocol** | **String** | The protocol to enforce. | 
**type** | **Integer** | The ICMP traffic type to allow. If unspecified, all types are allowed by this rule. | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::NetworkACLRuleProtocolICMP.new(code: 0,
                                 protocol: null,
                                 type: 8)
```


