# IbmCloudPower::CloudInstanceUsageLimits

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**instances** | **Float** | Number of power instances allowed | 
**memory** | **Float** | Amount of memory allowed | 
**proc_units** | **Float** | Number of processor units allowed | 
**processors** | **Float** | Number of processors allowed | 
**storage** | **Float** | Amount of storage allowed (TB) | 
**instance_memory** | **Float** | Maximum memory (in GB) per PVMInstance | [optional] 
**instance_proc_units** | **Float** | Maximum proc units per PVMInstance | [optional] 
**peering_networks** | **Integer** | Amount of peering networks allowed | [optional] 
**peering_bandwidth** | **Integer** | Maximum network bandwidth to GCP Mbps | [optional] 
**storage_ssd** | **Float** | Amount of SSD storage allowed (TB) | [optional] 
**storage_standard** | **Float** | Amount of standard (HDD) storage allowed (TB) | [optional] 

## Code Sample

```ruby
require 'IbmCloudPower'

instance = IbmCloudPower::CloudInstanceUsageLimits.new(instances: null,
                                 memory: null,
                                 proc_units: null,
                                 processors: null,
                                 storage: null,
                                 instance_memory: null,
                                 instance_proc_units: null,
                                 peering_networks: null,
                                 peering_bandwidth: null,
                                 storage_ssd: null,
                                 storage_standard: null)
```


