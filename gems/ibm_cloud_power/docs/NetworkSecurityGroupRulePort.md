# IbmCloudPower::NetworkSecurityGroupRulePort

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **maximum** | **Integer** | The end of the port range, if applicable. If the value is not present then the default value of 65535 will be the maximum port number. | [optional] |
| **minimum** | **Integer** | The start of the port range, if applicable. If the value is not present then the default value of 1 will be the minimum port number. | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::NetworkSecurityGroupRulePort.new(
  maximum: null,
  minimum: null
)
```

