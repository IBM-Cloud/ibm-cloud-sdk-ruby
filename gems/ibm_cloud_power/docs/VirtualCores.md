# IbmCloudPower::VirtualCores

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **min** | **Integer** | The minimum DLPAR range for virtual Cores (Display only support) | [optional] |
| **max** | **Integer** | The maximum DLPAR range for virtual Cores (Display only support) | [optional] |
| **assigned** | **Integer** | The active virtual Cores |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::VirtualCores.new(
  min: null,
  max: null,
  assigned: null
)
```

