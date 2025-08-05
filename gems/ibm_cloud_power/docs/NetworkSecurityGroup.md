# IbmCloudPower::NetworkSecurityGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **crn** | **String** | The Network Security Group&#39;s crn |  |
| **default** | **Boolean** | Indicates if the Network Security Group is the default Network Security Group in the workspace | [optional] |
| **id** | **String** | The ID of the Network Security Group |  |
| **members** | [**Array&lt;NetworkSecurityGroupMember&gt;**](NetworkSecurityGroupMember.md) | The list of IPv4 addresses and\\or Network Interfaces in the Network Security Group | [optional] |
| **name** | **String** | The name of the Network Security Group |  |
| **rules** | [**Array&lt;NetworkSecurityGroupRule&gt;**](NetworkSecurityGroupRule.md) | The list of rules in the Network Security Group | [optional] |
| **user_tags** | **Array&lt;String&gt;** | The user tags associated with this resource. | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::NetworkSecurityGroup.new(
  crn: null,
  default: null,
  id: null,
  members: null,
  name: null,
  rules: null,
  user_tags: null
)
```

