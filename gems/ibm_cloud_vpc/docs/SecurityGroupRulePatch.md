# IbmCloudVpc::SecurityGroupRulePatch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **Integer** | The ICMP traffic code to allow | [optional] 
**direction** | **String** | The direction of traffic to enforce, either &#x60;inbound&#x60; or &#x60;outbound&#x60;. | [optional] 
**ip_version** | **String** | The IP version to enforce. The format of &#x60;remote.address&#x60; or &#x60;remote.cidr_block&#x60; must match this field, if they are used. Alternatively, if &#x60;remote&#x60; references a security group, then this rule only applies to IP addresses (network interfaces) in that group matching this IP version. | [optional] 
**port_max** | **Integer** | The inclusive upper bound of TCP/UDP port range | [optional] 
**port_min** | **Integer** | The inclusive lower bound of TCP/UDP port range | [optional] 
**remote** | [**SecurityGroupRuleRemotePatch**](SecurityGroupRuleRemotePatch.md) |  | [optional] 
**type** | **Integer** | The ICMP traffic type to allow | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::SecurityGroupRulePatch.new(code: 0,
                                 direction: inbound,
                                 ip_version: ipv4,
                                 port_max: 22,
                                 port_min: 22,
                                 remote: null,
                                 type: 8)
```


