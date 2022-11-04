# IbmCloudPower::PVMInstanceHealth

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_update** | **String** | Date/Time of PVM last health status change | [optional] |
| **reason** | **String** | The health status reason, if any | [optional] |
| **status** | **String** | The PVM&#39;s health status value | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::PVMInstanceHealth.new(
  last_update: null,
  reason: null,
  status: null
)
```

