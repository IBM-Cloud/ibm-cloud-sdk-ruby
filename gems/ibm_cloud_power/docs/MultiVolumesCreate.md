# IbmCloudPower::MultiVolumesCreate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Base name of the volume(s) | 
**size** | **Integer** | Volume Size (GB) | 
**count** | **Integer** | Number of volumes to create | [optional] 
**shareable** | **Boolean** | Indicates if the volume is shareable between VMs | [optional] 
**disk_type** | **String** | Type of Disk; required if affinityPolicy is not provided, otherwise ignored | [optional] 
**affinity_policy** | **String** | Affinity policy for data volume being created; requires affinityPVMInstance or affinityVolume to be specified; | [optional] 
**affinity_volume** | **String** | Volume (ID or Name) to base volume affinity policy against; required if affinityPolicy is provided and affinityPVMInstance is not provided | [optional] 
**affinity_pvm_instance** | **String** | PVM Instance (ID or Name)to base volume affinity policy against; required if affinityPolicy is provided and affinityVolume is not provided | [optional] 

## Code Sample

```ruby
require 'IbmCloudPower'

instance = IbmCloudPower::MultiVolumesCreate.new(name: null,
                                 size: null,
                                 count: null,
                                 shareable: null,
                                 disk_type: null,
                                 affinity_policy: null,
                                 affinity_volume: null,
                                 affinity_pvm_instance: null)
```


