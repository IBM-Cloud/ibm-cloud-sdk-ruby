# IbmCloudVpc::SecurityGroupRuleProtocolTCPUDP

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**port_max** | **Integer** | The inclusive upper bound of TCP/UDP port range | [optional] 
**port_min** | **Integer** | The inclusive lower bound of TCP/UDP port range | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::SecurityGroupRuleProtocolTCPUDP.new(port_max: 22,
                                 port_min: 22)
```


