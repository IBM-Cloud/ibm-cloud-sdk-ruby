# IbmCloudPower::SnapshotV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **creation_date** | **Time** | The date and time when the volume snapshot was created. | [optional] |
| **id** | **String** | The volume snapshot UUID. |  |
| **name** | **String** | The volume snapshot name. |  |
| **size** | **Float** | The size of the volume snapshot, in gibibytes (GiB). |  |
| **status** | **String** | The status for the volume snapshot. |  |
| **updated_date** | **Time** | The date and time when the volume snapshot was last updated. | [optional] |
| **volume_id** | **String** | The volume UUID associated with the snapshot. |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::SnapshotV1.new(
  creation_date: null,
  id: null,
  name: null,
  size: null,
  status: null,
  updated_date: null,
  volume_id: null
)
```

