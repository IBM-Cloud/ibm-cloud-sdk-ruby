# IbmCloudPower::CreateDataVolume

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**disk_type** | **String** | Type of disk, required if affinityPolicy is not provided, otherwise ignored | [optional] 
**name** | **String** | Volume Name | 
**size** | **Float** | Volume Size (GB) | 
**shareable** | **Boolean** | Indicates if the volume is shareable between VMs | [optional] 
**affinity_policy** | **String** | Affinity policy for data volume being created; requires affinityPVMInstance or affinityVolume to be specified; | [optional] 
**affinity_volume** | **String** | Volume (ID or Name) to base volume affinity policy against; required if affinityPolicy is provided and affinityPVMInstance is not provided | [optional] 
**affinity_pvm_instance** | **String** | PVM Instance (ID or Name) to base volume affinity policy against; required if affinityPolicy is provided and affinityVolume is not provided | [optional] 

## Code Sample

```ruby
require 'IbmCloudPower'

instance = IbmCloudPower::CreateDataVolume.new(disk_type: null,
                                 name: null,
                                 size: null,
                                 shareable: null,
                                 affinity_policy: null,
                                 affinity_volume: null,
                                 affinity_pvm_instance: null)
```


