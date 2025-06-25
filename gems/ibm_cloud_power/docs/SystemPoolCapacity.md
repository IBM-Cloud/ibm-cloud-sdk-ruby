# IbmCloudPower::SystemPoolCapacity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cores** | **Float** | Number of available cores in the System Pool |  |
| **memory** | **Integer** | Amount of available memory in the System Pool (GB) |  |
| **systems** | [**Array&lt;SystemResources&gt;**](SystemResources.md) | The DataCenter list of servers and their available resources | [optional] |
| **total_cores** | **Float** | Total number of cores in the System Pool |  |
| **total_memory** | **Integer** | Total amount of memory in the System Pool (GB) |  |
| **total_phys_cores** | **Float** | Total number of physical cores in the Pod |  |
| **total_phys_memory** | **Integer** | Total amount of physical memory in the Pod (GB) |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::SystemPoolCapacity.new(
  cores: null,
  memory: null,
  systems: null,
  total_cores: null,
  total_memory: null,
  total_phys_cores: null,
  total_phys_memory: null
)
```

