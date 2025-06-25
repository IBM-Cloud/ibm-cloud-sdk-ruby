# IbmCloudPower::HostCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **host_group_id** | **String** | ID of the host group to which the host should be added |  |
| **hosts** | [**Array&lt;AddHost&gt;**](AddHost.md) | Hosts to be added |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::HostCreate.new(
  host_group_id: null,
  hosts: null
)
```

