# IbmCloudPower::PVMInstanceCores

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **assigned** | **Float** | The active processor information |  |
| **maximum** | **Float** | The maximum number of processors that can be allocated (for resize) | [optional] |
| **minimum** | **Float** | The minimum number of processors that can be allocated (for resize) | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::PVMInstanceCores.new(
  assigned: null,
  maximum: null,
  minimum: null
)
```

