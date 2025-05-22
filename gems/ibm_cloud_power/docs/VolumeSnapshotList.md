# IbmCloudPower::VolumeSnapshotList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **volume_snapshots** | [**Array&lt;SnapshotV1&gt;**](SnapshotV1.md) | The list of volume snapshots. | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::VolumeSnapshotList.new(
  volume_snapshots: null
)
```

