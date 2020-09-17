# IbmCloudVpc::NetworkACLRulePatch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**action** | **String** | Whether to allow or deny matching traffic | [optional] 
**before** | [**NetworkACLRuleIdentity**](NetworkACLRuleIdentity.md) | The rule to move this rule immediately before. Specify &#x60;null&#x60; to move this rule after all existing rules. | [optional] 
**code** | **Integer** | The ICMP traffic code to allow | [optional] 
**destination** | **String** | The destination IP address or CIDR block. The CIDR block &#x60;0.0.0.0/0&#x60; applies to all addresses. | [optional] 
**destination_port_max** | **Integer** | The inclusive upper bound of TCP/UDP destination port range | [optional] 
**destination_port_min** | **Integer** | The inclusive lower bound of TCP/UDP destination port range | [optional] 
**direction** | **String** | Whether the traffic to be matched is &#x60;inbound&#x60; or &#x60;outbound&#x60; | [optional] 
**name** | **String** | The user-defined name for this rule. Names must be unique within the network ACL the rule resides in. | [optional] 
**source** | **String** | The source IP address or CIDR block.  The CIDR block &#x60;0.0.0.0/0&#x60; applies to all addresses. | [optional] 
**source_port_max** | **Integer** | The inclusive upper bound of TCP/UDP source port range | [optional] 
**source_port_min** | **Integer** | The inclusive lower bound of TCP/UDP source port range | [optional] 
**type** | **Integer** | The ICMP traffic type to allow | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::NetworkACLRulePatch.new(action: null,
                                 before: {&quot;id&quot;:&quot;8daca77a-4980-4d33-8f3e-7038797be8f9&quot;},
                                 code: 0,
                                 destination: 192.168.3.2/32,
                                 destination_port_max: 22,
                                 destination_port_min: 22,
                                 direction: null,
                                 name: my-rule-2,
                                 source: 192.168.3.2/32,
                                 source_port_max: 65535,
                                 source_port_min: 49152,
                                 type: 8)
```


