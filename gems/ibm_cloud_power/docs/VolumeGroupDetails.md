# IbmCloudPower::VolumeGroupDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auxiliary** | **Boolean** | Indicates whether the volume group is for auxiliary volumes or master volumes | [optional] |
| **consistency_group_name** | **String** | The name of volume group at storage host level | [optional] |
| **id** | **String** | The ID of the volume group |  |
| **name** | **String** | The name of the volume group |  |
| **replication_sites** | **Array&lt;String&gt;** | Indicates the replication site of the volume group | [optional] |
| **replication_status** | **String** | Replication status of volume group | [optional] |
| **status** | **String** | Status of the volume group | [optional] |
| **status_description** | [**StatusDescription**](StatusDescription.md) |  | [optional] |
| **storage_pool** | **String** | Indicates the storage pool of the volume group | [optional] |
| **volume_ids** | **Array&lt;String&gt;** | List of volume IDs,member of VolumeGroup | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::VolumeGroupDetails.new(
  auxiliary: null,
  consistency_group_name: null,
  id: null,
  name: null,
  replication_sites: null,
  replication_status: null,
  status: null,
  status_description: null,
  storage_pool: null,
  volume_ids: null
)
```

