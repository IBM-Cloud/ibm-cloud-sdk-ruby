# IbmCloudPower::NetworkSecurityGroupMoveMember

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_id** | **String** | The member to move |  |
| **network_security_group_id** | **String** | The ID of the Network Security Group the member will be moved to |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::NetworkSecurityGroupMoveMember.new(
  member_id: null,
  network_security_group_id: null
)
```

