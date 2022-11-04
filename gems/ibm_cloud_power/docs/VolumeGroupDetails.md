# IbmCloudPower::VolumeGroupDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **consistency_group_name** | **String** | The name of volume group at storage host level | [optional] |
| **id** | **String** | The ID of the volume group |  |
| **name** | **String** | The name of the volume group |  |
| **replication_status** | **String** | Replication status of volume group | [optional] |
| **status** | **String** | Status of the volume group | [optional] |
| **status_description** | [**StatusDescription**](StatusDescription.md) |  | [optional] |
| **volume_ids** | **Array&lt;String&gt;** | List of volume IDs,member of VolumeGroup | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::VolumeGroupDetails.new(
  consistency_group_name: null,
  id: null,
  name: null,
  replication_status: null,
  status: null,
  status_description: null,
  volume_ids: null
)
```

