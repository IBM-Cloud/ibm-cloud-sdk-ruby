# IbmCloudPower::NetworkSecurityGroupAddRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** | The action to take if the rule matches network traffic |  |
| **destination_port** | [**NetworkSecurityGroupRulePort**](NetworkSecurityGroupRulePort.md) | The destination port for a network security group rule. | [optional] |
| **destination_ports** | [**NetworkSecurityGroupRulePort**](NetworkSecurityGroupRulePort.md) | (deprecated - replaced by destinationPort) The destination port for a network security group rule. | [optional] |
| **protocol** | [**NetworkSecurityGroupRuleProtocol**](NetworkSecurityGroupRuleProtocol.md) |  |  |
| **remote** | [**NetworkSecurityGroupRuleRemote**](NetworkSecurityGroupRuleRemote.md) |  |  |
| **source_port** | [**NetworkSecurityGroupRulePort**](NetworkSecurityGroupRulePort.md) | The source port for a network security group rule. | [optional] |
| **source_ports** | [**NetworkSecurityGroupRulePort**](NetworkSecurityGroupRulePort.md) | (deprecated - replaced by sourcePort) The source port for a network security group rule. | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::NetworkSecurityGroupAddRule.new(
  action: null,
  destination_port: null,
  destination_ports: null,
  protocol: null,
  remote: null,
  source_port: null,
  source_ports: null
)
```

