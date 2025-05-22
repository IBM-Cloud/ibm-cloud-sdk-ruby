# IbmCloudPower::SystemPool

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **capacity** | [**SystemPoolCapacity**](SystemPoolCapacity.md) |  | [optional] |
| **core_increment** | **Float** | Core allocation increment | [optional] |
| **core_memory_ratio** | **Float** | Processor to Memory (GB) Ratio | [optional] |
| **max_available** | [**SystemPoolMaxAvailable**](SystemPoolMaxAvailable.md) |  | [optional] |
| **max_cores_available** | [**SystemPoolMaxCoresAvailable**](SystemPoolMaxCoresAvailable.md) |  | [optional] |
| **max_memory_available** | [**SystemPoolMaxMemoryAvailable**](SystemPoolMaxMemoryAvailable.md) |  | [optional] |
| **shared_core_ratio** | [**SystemPoolSharedCoreRatio**](SystemPoolSharedCoreRatio.md) |  | [optional] |
| **systems** | [**Array&lt;System&gt;**](System.md) | The DataCenter list of servers and their available resources | [optional] |
| **type** | **String** | Type of system hardware | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::SystemPool.new(
  capacity: null,
  core_increment: null,
  core_memory_ratio: null,
  max_available: null,
  max_cores_available: null,
  max_memory_available: null,
  shared_core_ratio: null,
  systems: null,
  type: null
)
```

