# IbmCloudPower::SnapshotV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** | Action performed on the instance snapshot | [optional] |
| **aggregated_snapshot_usage** | **Hash&lt;String, Float&gt;** | The aggregated storage for the instance snapshot for each storage tier | [optional] |
| **completion_date** | **Time** | Date when the instance snapshot completed | [optional] |
| **copy_volumes** | [**Array&lt;CopyVolume&gt;**](CopyVolume.md) | List of copy volumes created for the zonal or regional instance snapshot. Valid only for a zonal and regional instance snapshots. | [optional] |
| **creation_date** | **Time** | Creation Date | [optional] |
| **crn** | **String** | CRN of the instance snapshot |  |
| **description** | **String** | Description of the PVM instance snapshot with a maximum of 255 characters allowed. | [optional] |
| **job_id** | **String** | ID of the job created to track the progress of the snapshot operation | [optional] |
| **last_update_date** | **Time** | Last Update Date | [optional] |
| **name** | **String** | Name of the PVM instance snapshot |  |
| **percent_complete** | **Integer** | Snapshot completion percentage | [optional] |
| **pvm_instance_crn** | **String** | CRN of the PVM Instance the instance snapshot is for. | [optional] |
| **pvm_instance_id** | **String** | ID of the PVM Instance the instance snapshot is for. Not valid for remote regional instance snapshots. | [optional] |
| **snapshot_id** | **String** | ID of the PVM instance snapshot |  |
| **status** | **String** | Status of the PVM instance snapshot | [optional] |
| **status_detail** | **String** | Detailed information for the last PVM instance snapshot action | [optional] |
| **type** | **String** | Type of instance snapshot |  |
| **user_tags** | **Array&lt;String&gt;** | List of user tags | [optional] |
| **volume_snapshots** | **Hash&lt;String, String&gt;** | A map of volume snapshots included in the PVM instance snapshot | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::SnapshotV2.new(
  action: null,
  aggregated_snapshot_usage: null,
  completion_date: null,
  copy_volumes: null,
  creation_date: null,
  crn: null,
  description: null,
  job_id: null,
  last_update_date: null,
  name: null,
  percent_complete: null,
  pvm_instance_crn: null,
  pvm_instance_id: null,
  snapshot_id: null,
  status: null,
  status_detail: null,
  type: null,
  user_tags: null,
  volume_snapshots: null
)
```

