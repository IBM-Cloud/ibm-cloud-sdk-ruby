# IbmCloudPower::VolumeRemoteCopyRelationship

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cycle_period_seconds** | **Integer** | Indicates the minimum period in seconds between multiple cycles | [optional] |
| **id** | **String** | Volume ID | [optional] |
| **aux_changed_volume_name** | **String** | Name of the volume that is acting as the auxiliary change volume for the relationship | [optional] |
| **aux_volume_name** | **String** | Auxiliary volume name at storage host level | [optional] |
| **consistency_group_name** | **String** | Consistency Group Name if volume is a part of volume group | [optional] |
| **copy_type** | **String** | Indicates the copy type. | [optional] |
| **cycling_mode** | **String** | Indicates the type of cycling mode used. | [optional] |
| **freeze_time** | **Time** | Freeze time of remote copy relationship | [optional] |
| **master_changed_volume_name** | **String** | Name of the volume that is acting as the master change volume for the relationship | [optional] |
| **master_volume_name** | **String** | Master volume name at storage host level | [optional] |
| **name** | **String** | Remote copy relationship name |  |
| **primary_role** | **String** | Indicates whether master/aux volume is playing the primary role | [optional] |
| **progress** | **Integer** | Indicates the relationship progress | [optional] |
| **remote_copy_id** | **String** | Remote copy relationship ID |  |
| **state** | **String** | Indicates the relationship state | [optional] |
| **sync** | **String** | Indicates whether the relationship is synchronized | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::VolumeRemoteCopyRelationship.new(
  cycle_period_seconds: null,
  id: null,
  aux_changed_volume_name: null,
  aux_volume_name: null,
  consistency_group_name: null,
  copy_type: null,
  cycling_mode: null,
  freeze_time: null,
  master_changed_volume_name: null,
  master_volume_name: null,
  name: null,
  primary_role: null,
  progress: null,
  remote_copy_id: null,
  state: null,
  sync: null
)
```

