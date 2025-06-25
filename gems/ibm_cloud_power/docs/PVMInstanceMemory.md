# IbmCloudPower::PVMInstanceMemory

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **assigned** | **Float** | The active memory information |  |
| **maximum** | **Float** | The maximum amount of memory that can be allocated (in GB, for resize) | [optional] |
| **minimum** | **Float** | The minimum amount of memory that can be allocated (in GB, for resize) | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::PVMInstanceMemory.new(
  assigned: null,
  maximum: null,
  minimum: null
)
```

