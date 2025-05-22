# IbmCloudPower::NetworkAddressGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **crn** | **String** | The Network Address Group&#39;s crn |  |
| **id** | **String** | The id of the Network Address Group |  |
| **members** | [**Array&lt;NetworkAddressGroupMember&gt;**](NetworkAddressGroupMember.md) | The list of IP addresses in CIDR notation (for example 192.168.66.2/32) in the Network Address Group | [optional] |
| **name** | **String** | The name of the Network Address Group |  |
| **user_tags** | **Array&lt;String&gt;** | The user tags associated with this resource. | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::NetworkAddressGroup.new(
  crn: null,
  id: null,
  members: null,
  name: null,
  user_tags: null
)
```

