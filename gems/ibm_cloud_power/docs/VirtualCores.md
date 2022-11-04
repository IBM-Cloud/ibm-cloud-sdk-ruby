# IbmCloudPower::VirtualCores

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **assigned** | **Integer** | The active virtual Cores |  |
| **max** | **Integer** | The maximum DLPAR range for virtual Cores (Display only support) | [optional] |
| **min** | **Integer** | The minimum DLPAR range for virtual Cores (Display only support) | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::VirtualCores.new(
  assigned: null,
  max: null,
  min: null
)
```

