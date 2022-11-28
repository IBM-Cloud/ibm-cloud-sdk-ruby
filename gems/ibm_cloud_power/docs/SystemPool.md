# IbmCloudPower::SystemPool

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **capacity** | [**System**](System.md) |  | [optional] |
| **core_memory_ratio** | **Float** | Processor to Memory (GB) Ratio | [optional] |
| **max_available** | [**System**](System.md) |  | [optional] |
| **max_cores_available** | [**System**](System.md) |  | [optional] |
| **max_memory_available** | [**System**](System.md) |  | [optional] |
| **shared_core_ratio** | [**MinMaxDefault**](MinMaxDefault.md) |  | [optional] |
| **systems** | [**Array&lt;System&gt;**](System.md) | The DataCenter list of servers and their available resources | [optional] |
| **type** | **String** | Type of system hardware | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::SystemPool.new(
  capacity: null,
  core_memory_ratio: null,
  max_available: null,
  max_cores_available: null,
  max_memory_available: null,
  shared_core_ratio: null,
  systems: null,
  type: null
)
```

