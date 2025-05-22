# IbmCloudPower::PVMInstanceVirtualCores

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **assigned** | **Integer** | The active virtual Cores |  |
| **maximum** | **Integer** | The maximum DLPAR range for virtual Cores (Display only support) | [optional] |
| **minimum** | **Integer** | The minimum DLPAR range for virtual Cores (Display only support) | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::PVMInstanceVirtualCores.new(
  assigned: null,
  maximum: null,
  minimum: null
)
```

