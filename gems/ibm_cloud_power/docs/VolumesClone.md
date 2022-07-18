# IbmCloudPower::VolumesClone

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **volumes_clone_id** | **String** | ID assigned to a volumes-clone request | [optional] |
| **name** | **String** | Name assigned to a volumes-clone request | [optional] |
| **status** | **String** | Current status of the volumes-clone request | [optional] |
| **action** | **String** | Current action performed for the volumes-clone request | [optional] |
| **percent_complete** | **Integer** | The percent completion for the current action |  |
| **failure_message** | **String** | Failure reason for a failed volumes-clone request | [optional] |
| **creation_date** | **Time** | Creation Date | [optional] |
| **last_update_date** | **Time** | Last Update Date | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::VolumesClone.new(
  volumes_clone_id: null,
  name: null,
  status: null,
  action: null,
  percent_complete: null,
  failure_message: null,
  creation_date: null,
  last_update_date: null
)
```

