# IbmCloudPower::VolumeReference

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**volume_id** | **String** | Volume ID | 
**name** | **String** | Volume Name | 
**state** | **String** | Volume State | 
**size** | **Float** | Volume Size | 
**shareable** | **Boolean** | Indicates if the volume is shareable between VMs | 
**bootable** | **Boolean** | Indicates if the volume is boot capable | 
**boot_volume** | **Boolean** | Indicates if the volume is the server&#39;s boot volume | [optional] 
**delete_on_termination** | **Boolean** | Indicates if the volume should be deleted when the server terminates | [optional] 
**disk_type** | **String** | Type of Disk | 
**volume_type** | **String** | Volume type, name of storage template used to create the volume | [optional] 
**wwn** | **String** | Volume world wide name | 
**creation_date** | **DateTime** | Creation Date | 
**last_update_date** | **DateTime** | Last Update Date | 
**href** | **String** | Link to Volume resource | 
**pvm_instance_i_ds** | **Array&lt;String&gt;** | List of PCloud PVM Instance attached to the volume | [optional] 

## Code Sample

```ruby
require 'IbmCloudPower'

instance = IbmCloudPower::VolumeReference.new(volume_id: null,
                                 name: null,
                                 state: null,
                                 size: null,
                                 shareable: null,
                                 bootable: null,
                                 boot_volume: null,
                                 delete_on_termination: null,
                                 disk_type: null,
                                 volume_type: null,
                                 wwn: null,
                                 creation_date: null,
                                 last_update_date: null,
                                 href: null,
                                 pvm_instance_i_ds: null)
```


