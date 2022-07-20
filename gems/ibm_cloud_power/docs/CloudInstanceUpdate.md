# IbmCloudPower::CloudInstanceUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **processors** | **Float** | Number of processors allowed | [optional] |
| **proc_units** | **Float** | Number of processor units allowed | [optional] |
| **memory** | **Float** | Amount of memory allowed | [optional] |
| **instances** | **Float** | Number of power instances allowed | [optional] |
| **storage** | **Float** | Amount of storage allowed (TB) | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::CloudInstanceUpdate.new(
  processors: null,
  proc_units: null,
  memory: null,
  instances: null,
  storage: null
)
```

