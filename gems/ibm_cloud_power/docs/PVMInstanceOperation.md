# IbmCloudPower::PVMInstanceOperation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **operation** | [**Operations**](Operations.md) |  |  |
| **operation_type** | **String** | Name of the operation to execute; can be job or boot |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::PVMInstanceOperation.new(
  operation: null,
  operation_type: null
)
```

