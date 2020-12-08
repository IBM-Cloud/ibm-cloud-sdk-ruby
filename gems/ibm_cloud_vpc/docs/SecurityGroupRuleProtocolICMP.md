# IbmCloudVpc::SecurityGroupRuleProtocolICMP

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **Integer** | The ICMP traffic code to allow | [optional] 
**protocol** | **String** | The protocol to enforce. | 
**type** | **Integer** | The ICMP traffic type to allow | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::SecurityGroupRuleProtocolICMP.new(code: 0,
                                 protocol: null,
                                 type: 8)
```


