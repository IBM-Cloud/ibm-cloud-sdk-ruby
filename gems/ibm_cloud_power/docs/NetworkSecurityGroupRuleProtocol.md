# IbmCloudPower::NetworkSecurityGroupRuleProtocol

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **icmp_type** | **String** | If icmp type, a ICMP packet type affected by ICMP rules and if not present then all types are matched | [optional] |
| **tcp_flags** | [**Array&lt;NetworkSecurityGroupRuleProtocolTcpFlag&gt;**](NetworkSecurityGroupRuleProtocolTcpFlag.md) | If tcp type, the list of TCP flags and if not present then all flags are matched | [optional] |
| **type** | **String** | The protocol of the network traffic | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::NetworkSecurityGroupRuleProtocol.new(
  icmp_type: null,
  tcp_flags: null,
  type: null
)
```

