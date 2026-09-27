# IbmCloudPower::RemotePeerSnapshot

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **completion_date** | **Time** | Date when the remote peer snapshot completed | [optional] |
| **copy_volumes** | [**Array&lt;CopyVolume&gt;**](CopyVolume.md) | List of copy volumes created for the remote peer snapshot. Valid only for a zonal and regional instance snapshots. | [optional] |
| **crn** | **String** | CRN of the remote peer snapshot. |  |
| **id** | **String** | ID of the remote peer snapshot |  |
| **name** | **String** | Name of the remote peer snapshot |  |
| **status** | **String** | status of the remote peer snapshot |  |
| **status_detail** | **String** | Detailed information for the remote peer snapshot | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::RemotePeerSnapshot.new(
  completion_date: null,
  copy_volumes: null,
  crn: null,
  id: null,
  name: null,
  status: null,
  status_detail: null
)
```

