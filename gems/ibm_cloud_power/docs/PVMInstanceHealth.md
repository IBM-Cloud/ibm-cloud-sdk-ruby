# IbmCloudPower::PVMInstanceHealth

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | The PVM&#39;s health status value | [optional] |
| **last_update** | **String** | Date/Time of PVM last health status change | [optional] |
| **reason** | **String** | The health status reason, if any | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::PVMInstanceHealth.new(
  status: null,
  last_update: null,
  reason: null
)
```

