# IbmCloudPower::SystemResources

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cores** | **Float** | The host available Processor units |  |
| **host_mtms_name** | **String** | The host MTMS name | [optional] |
| **id** | **Integer** | The host identifier |  |
| **memory** | **Integer** | The host available RAM memory in GiB |  |
| **total_cores** | **Float** | The host total usable Processor units |  |
| **total_memory** | **Integer** | The host total usable RAM memory in GiB |  |
| **total_phys_cores** | **Float** | Total number of physical cores in the Pod |  |
| **total_phys_memory** | **Integer** | Total amount of physical memory in the Pod (GB) |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::SystemResources.new(
  cores: null,
  host_mtms_name: null,
  id: null,
  memory: null,
  total_cores: null,
  total_memory: null,
  total_phys_cores: null,
  total_phys_memory: null
)
```

