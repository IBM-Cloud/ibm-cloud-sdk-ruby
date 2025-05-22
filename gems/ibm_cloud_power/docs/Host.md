# IbmCloudPower::Host

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **capacity** | [**HostCapacity**](HostCapacity.md) |  | [optional] |
| **crn** | **String** | The CRN for this resource | [optional] |
| **display_name** | **String** | Name of the host (chosen by the user) | [optional] |
| **host_group** | [**HostHostGroup**](HostHostGroup.md) |  | [optional] |
| **id** | **String** | ID of the host | [optional] |
| **state** | **String** | State of the host (up/down) | [optional] |
| **status** | **String** | Status of the host (enabled/disabled) | [optional] |
| **sys_type** | **String** | System type | [optional] |
| **user_tags** | **Array&lt;String&gt;** | List of user tags | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::Host.new(
  capacity: null,
  crn: null,
  display_name: null,
  host_group: null,
  id: null,
  state: null,
  status: null,
  sys_type: null,
  user_tags: null
)
```

