# IbmCloudPower::NetworkSecurityGroupRuleRemote

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the remote Network Address Group or Network Security Group the rules apply to. Not required for default-network-address-group | [optional] |
| **type** | **String** | The type of remote group the rules apply to | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::NetworkSecurityGroupRuleRemote.new(
  id: null,
  type: null
)
```

