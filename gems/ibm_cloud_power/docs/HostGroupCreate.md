# IbmCloudPower::HostGroupCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hosts** | [**Array&lt;AddHost&gt;**](AddHost.md) | List of hosts to add to the host group |  |
| **name** | **String** | Name of the host group to create |  |
| **secondaries** | [**Array&lt;Secondary&gt;**](Secondary.md) | List of workspaces to share the host group with (optional) | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::HostGroupCreate.new(
  hosts: null,
  name: null,
  secondaries: null
)
```

