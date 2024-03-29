# IbmCloudPower::VolumeReference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aux_volume_name** | **String** | Auxiliary volume name at storage host level | [optional] |
| **auxiliary** | **Boolean** | true if volume is auxiliary otherwise false | [optional] |
| **boot_volume** | **Boolean** | Indicates if the volume is the server&#39;s boot volume | [optional] |
| **bootable** | **Boolean** | Indicates if the volume is boot capable |  |
| **consistency_group_name** | **String** | Consistency Group Name if volume is a part of volume group | [optional] |
| **creation_date** | **Time** | Creation Date |  |
| **delete_on_termination** | **Boolean** | Indicates if the volume should be deleted when the server terminates | [optional] |
| **disk_type** | **String** | Type of Disk |  |
| **group_id** | **String** | Volume Group ID | [optional] |
| **href** | **String** | Link to Volume resource |  |
| **last_update_date** | **Time** | Last Update Date |  |
| **master_volume_name** | **String** | Master volume name at storage host level | [optional] |
| **mirroring_state** | **String** | mirroring state for replication enabled volume | [optional] |
| **name** | **String** | Volume Name |  |
| **out_of_band_deleted** | **Boolean** | true if volume does not exist on storage controller, as volume has been deleted by deleting its paired volume from the mapped replication site. | [optional] |
| **primary_role** | **String** | indicates whether master/aux volume is playing the primary role | [optional] |
| **pvm_instance_ids** | **Array&lt;String&gt;** | List of PCloud PVM Instance attached to the volume | [optional] |
| **replication_enabled** | **Boolean** | True if volume is replication enabled otherwise false | [optional] |
| **replication_status** | **String** | shows the replication status of a volume | [optional] |
| **replication_type** | **String** | type of replication(metro, global)s | [optional] |
| **shareable** | **Boolean** | Indicates if the volume is shareable between VMs |  |
| **size** | **Float** | Volume Size |  |
| **state** | **String** | Volume State |  |
| **volume_id** | **String** | Volume ID |  |
| **volume_pool** | **String** | Volume pool, name of storage pool where the volume is located | [optional] |
| **volume_type** | **String** | Volume type, name of storage template used to create the volume | [optional] |
| **wwn** | **String** | Volume world wide name |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::VolumeReference.new(
  aux_volume_name: null,
  auxiliary: null,
  boot_volume: null,
  bootable: null,
  consistency_group_name: null,
  creation_date: null,
  delete_on_termination: null,
  disk_type: null,
  group_id: null,
  href: null,
  last_update_date: null,
  master_volume_name: null,
  mirroring_state: null,
  name: null,
  out_of_band_deleted: null,
  primary_role: null,
  pvm_instance_ids: null,
  replication_enabled: null,
  replication_status: null,
  replication_type: null,
  shareable: null,
  size: null,
  state: null,
  volume_id: null,
  volume_pool: null,
  volume_type: null,
  wwn: null
)
```

