# IbmCloudPower::PVMInstanceAction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** | Name of the action to take; can be start, stop, hard-reboot, soft-reboot, immediate-shutdown, reset-state, dhcp-ip-sync (on-prem only) |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::PVMInstanceAction.new(
  action: null
)
```

