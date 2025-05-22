# IbmCloudPower::NetworkSecurityGroupRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** | The action to take if the rule matches network traffic |  |
| **destination_port** | [**NetworkSecurityGroupRulePort**](NetworkSecurityGroupRulePort.md) |  | [optional] |
| **id** | **String** | The ID of the rule in a Network Security Group |  |
| **protocol** | [**NetworkSecurityGroupRuleProtocol**](NetworkSecurityGroupRuleProtocol.md) |  |  |
| **remote** | [**NetworkSecurityGroupRuleRemote**](NetworkSecurityGroupRuleRemote.md) |  |  |
| **source_port** | [**NetworkSecurityGroupRulePort**](NetworkSecurityGroupRulePort.md) |  | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::NetworkSecurityGroupRule.new(
  action: null,
  destination_port: null,
  id: null,
  protocol: null,
  remote: null,
  source_port: null
)
```

