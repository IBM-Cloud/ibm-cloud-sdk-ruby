# IbmCloudPower::NetworkSecurityGroupAddMember

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **target** | **String** | The target member to add. An IP4 address if ipv4-address type or a network interface ID if network-interface type |  |
| **type** | **String** | The type of member |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::NetworkSecurityGroupAddMember.new(
  target: null,
  type: null
)
```

