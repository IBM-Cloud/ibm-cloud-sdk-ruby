# IbmCloudVpc::NetworkACLRule

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**action** | **String** | Whether to allow or deny matching traffic | 
**before** | [**NetworkACLRuleReference**](NetworkACLRuleReference.md) | The rule that this rule is immediately before. If absent, this is the last rule. | [optional] 
**created_at** | **DateTime** | The date and time that the rule was created | 
**destination** | **String** | The destination CIDR block. The CIDR block &#x60;0.0.0.0/0&#x60; applies to all addresses. | 
**direction** | **String** | Whether the traffic to be matched is &#x60;inbound&#x60; or &#x60;outbound&#x60; | 
**href** | **String** | The URL for this Network ACL rule | 
**id** | **String** | The unique identifier for this Network ACL rule | 
**ip_version** | **String** | The IP version for this rule | 
**name** | **String** | The user-defined name for this rule. Names must be unique within the network ACL the rule resides in. If unspecified, the name will be a hyphenated list of randomly-selected words. | 
**protocol** | **String** | The protocol to enforce. | 
**source** | **String** | The source CIDR block. The CIDR block &#x60;0.0.0.0/0&#x60; applies to all addresses. | 
**destination_port_max** | **Integer** | The inclusive upper bound of TCP/UDP destination port range | [optional] [default to 65535]
**destination_port_min** | **Integer** | The inclusive lower bound of TCP/UDP destination port range | [optional] [default to 1]
**source_port_max** | **Integer** | The inclusive upper bound of TCP/UDP source port range | [optional] [default to 65335]
**source_port_min** | **Integer** | The inclusive lower bound of TCP/UDP source port range | [optional] [default to 1]
**code** | **Integer** | The ICMP traffic code to allow. If unspecified, all codes are allowed. This can only be specified if type is also specified. | [optional] 
**type** | **Integer** | The ICMP traffic type to allow. If unspecified, all types are allowed by this rule. | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::NetworkACLRule.new(action: null,
                                 before: {&quot;href&quot;:&quot;https://us-south.iaas.cloud.ibm.com/v1/network_acls/a4e28308-8ee7-46ab-8108-9f881f22bdbf/rules/8daca77a-4980-4d33-8f3e-7038797be8f9&quot;,&quot;id&quot;:&quot;8daca77a-4980-4d33-8f3e-7038797be8f9&quot;,&quot;name&quot;:&quot;my-rule-1&quot;},
                                 created_at: null,
                                 destination: 192.168.3.0/24,
                                 direction: null,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/network_acls/a4e28308-8ee7-46ab-8108-9f881f22bdbf/rules/8daca77a-4980-4d33-8f3e-7038797be8f9,
                                 id: 8daca77a-4980-4d33-8f3e-7038797be8f9,
                                 ip_version: null,
                                 name: my-rule-2,
                                 protocol: tcp,
                                 source: 192.168.3.0/24,
                                 destination_port_max: 22,
                                 destination_port_min: 22,
                                 source_port_max: 65535,
                                 source_port_min: 49152,
                                 code: 0,
                                 type: 8)
```


