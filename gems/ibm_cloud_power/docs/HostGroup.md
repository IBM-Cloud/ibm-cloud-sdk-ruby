# IbmCloudPower::HostGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **creation_date** | **Time** | Date/Time of host group creation | [optional] |
| **hosts** | **Array&lt;String&gt;** | List of hosts | [optional] |
| **id** | **String** | Host group ID | [optional] |
| **name** | **String** | Name of the host group | [optional] |
| **primary** | **String** | ID of the workspace owning the host group | [optional] |
| **secondaries** | **Array&lt;String&gt;** | IDs of workspaces the host group has been shared with | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::HostGroup.new(
  creation_date: null,
  hosts: null,
  id: null,
  name: null,
  primary: null,
  secondaries: null
)
```

