# IbmCloudPower::VolumesCloneDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** | Current action performed for the volumes-clone request | [optional] |
| **cloned_volumes** | [**Array&lt;ClonedVolumeDetail&gt;**](ClonedVolumeDetail.md) | List of cloned volumes created from the volumes-clone request | [optional] |
| **creation_date** | **Time** | Creation Date | [optional] |
| **failure_message** | **String** | Failure reason for a failed volumes-clone request | [optional] |
| **last_update_date** | **Time** | Last Update Date | [optional] |
| **name** | **String** | Name assigned to a volumes-clone request | [optional] |
| **percent_complete** | **Integer** | The percent completion for the current action |  |
| **status** | **String** | Current status of the volumes-clone request | [optional] |
| **volumes_clone_id** | **String** | ID assigned to a volumes-clone request | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::VolumesCloneDetail.new(
  action: null,
  cloned_volumes: null,
  creation_date: null,
  failure_message: null,
  last_update_date: null,
  name: null,
  percent_complete: null,
  status: null,
  volumes_clone_id: null
)
```

