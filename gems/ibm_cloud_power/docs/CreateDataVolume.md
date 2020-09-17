# IbmCloudPower::CreateDataVolume

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**disk_type** | **String** | Type of Disk, required if affinityPolicy not used | [optional] 
**volume_pool** | **String** | Volume pool where the volume will be located | [optional] 
**name** | **String** | Volume Name | 
**size** | **Float** | Volume Size (GB) | 
**shareable** | **Boolean** | Indicates if the volume is shareable between VMs | [optional] 
**affinity_policy** | **String** | Affinity policy for data volume being created; requires affinityVolume to be specified | [optional] 
**affinity_volume** | **String** | Volume (ID or Name)to base volume affinity policy against; required if affinityPolicy provided | [optional] 

## Code Sample

```ruby
require 'IbmCloudPower'

instance = IbmCloudPower::CreateDataVolume.new(disk_type: null,
                                 volume_pool: null,
                                 name: null,
                                 size: null,
                                 shareable: null,
                                 affinity_policy: null,
                                 affinity_volume: null)
```


