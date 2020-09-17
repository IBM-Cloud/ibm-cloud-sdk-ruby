# IbmCloudVpc::NetworkACLRuleProtocolTCPUDP

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**destination_port_max** | **Integer** | The inclusive upper bound of TCP/UDP destination port range | [optional] [default to 65535]
**destination_port_min** | **Integer** | The inclusive lower bound of TCP/UDP destination port range | [optional] [default to 1]
**source_port_max** | **Integer** | The inclusive upper bound of TCP/UDP source port range | [optional] [default to 65335]
**source_port_min** | **Integer** | The inclusive lower bound of TCP/UDP source port range | [optional] [default to 1]

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::NetworkACLRuleProtocolTCPUDP.new(destination_port_max: 22,
                                 destination_port_min: 22,
                                 source_port_max: 65535,
                                 source_port_min: 49152)
```


