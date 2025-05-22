# IbmCloudPower::System

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **available_cores** | **Float** | The host available Processor units | [optional] |
| **available_memory** | **Integer** | The host available RAM memory in GiB | [optional] |
| **cores** | **Float** | The host available Processor units |  |
| **host_mtms_name** | **String** | The host MTMS name | [optional] |
| **id** | **Integer** | The host identifier | [optional] |
| **memory** | **Integer** | The host total RAM memory in GiB |  |
| **total_cores** | **Float** | The host total usable Processor units | [optional] |
| **total_memory** | **Integer** | The host total usable RAM memory in GiB | [optional] |
| **total_phys_cores** | **Float** | Total number of physical cores in the Pod | [optional] |
| **total_phys_memory** | **Integer** | Total amount of physical memory in the Pod (GB) | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::System.new(
  available_cores: null,
  available_memory: null,
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

