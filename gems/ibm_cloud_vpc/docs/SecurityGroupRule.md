# IbmCloudVpc::SecurityGroupRule

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**direction** | **String** | The direction of traffic to enforce, either &#x60;inbound&#x60; or &#x60;outbound&#x60;. | 
**href** | **String** | The URL for this security group rule | 
**id** | **String** | The unique identifier for this security group rule | 
**ip_version** | **String** | The IP version to enforce. The format of &#x60;remote.address&#x60; or &#x60;remote.cidr_block&#x60; must match this field, if they are used. Alternatively, if &#x60;remote&#x60; references a security group, then this rule only applies to IP addresses (network interfaces) in that group matching this IP version. | [optional] 
**protocol** | **String** | The protocol to enforce. | [optional] 
**remote** | [**OneOfIPCIDRSecurityGroupReference**](OneOfIPCIDRSecurityGroupReference.md) | The IP addresses or security groups from which this rule allows traffic (or to which, for outbound rules). Can be specified as an IP address, a CIDR block, or a security group. A CIDR block of &#x60;0.0.0.0/0&#x60; allows traffic from any source (or to any source, for outbound rules). | 
**code** | **Integer** | The ICMP traffic code to allow | [optional] 
**type** | **Integer** | The ICMP traffic type to allow | [optional] 
**port_max** | **Integer** | The inclusive upper bound of TCP/UDP port range | [optional] 
**port_min** | **Integer** | The inclusive lower bound of TCP/UDP port range | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::SecurityGroupRule.new(direction: inbound,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/security_groups/be5df5ca-12a0-494b-907e-aa6ec2bfa271/rules/6f2a6efe-21e2-401c-b237-620aa26ba16a,
                                 id: 6f2a6efe-21e2-401c-b237-620aa26ba16a,
                                 ip_version: ipv4,
                                 protocol: tcp,
                                 remote: null,
                                 code: 0,
                                 type: 8,
                                 port_max: 22,
                                 port_min: 22)
```


