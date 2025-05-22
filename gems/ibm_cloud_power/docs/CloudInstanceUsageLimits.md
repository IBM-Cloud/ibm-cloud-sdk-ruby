# IbmCloudPower::CloudInstanceUsageLimits

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_memory** | **Float** | Maximum memory (in GB) per PVMInstance | [optional] |
| **instance_proc_units** | **Float** | Maximum proc units per PVMInstance | [optional] |
| **instances** | **Float** | Number of power instances allowed |  |
| **memory** | **Float** | Amount of memory allowed |  |
| **peering_bandwidth** | **Integer** | Maximum network bandwidth to GCP Mbps | [optional] |
| **peering_networks** | **Integer** | Amount of peering networks allowed | [optional] |
| **proc_units** | **Float** | Number of processor units allowed |  |
| **processors** | **Float** | Number of processors allowed |  |
| **storage** | **Float** | Amount of storage allowed (TB) |  |
| **storage_ssd** | **Float** | Amount of SSD storage allowed (TB) | [optional] |
| **storage_standard** | **Float** | Amount of standard (HDD) storage allowed (TB) | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::CloudInstanceUsageLimits.new(
  instance_memory: null,
  instance_proc_units: null,
  instances: null,
  memory: null,
  peering_bandwidth: null,
  peering_networks: null,
  proc_units: null,
  processors: null,
  storage: null,
  storage_ssd: null,
  storage_standard: null
)
```

