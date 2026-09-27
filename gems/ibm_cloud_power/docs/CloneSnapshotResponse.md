# IbmCloudPower::CloneSnapshotResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloned_volumes** | [**Array&lt;ClonedVolumeSnapshot&gt;**](ClonedVolumeSnapshot.md) | List of cloned volumes | [optional] |
| **job_id** | **String** | ID of the job created to track progress of clone operation | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::CloneSnapshotResponse.new(
  cloned_volumes: null,
  job_id: null
)
```

