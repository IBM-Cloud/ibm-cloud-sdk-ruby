# IbmCloudPower::Snapshot

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** | Action performed on the instance snapshot | [optional] |
| **creation_date** | **Time** | Creation Date | [optional] |
| **description** | **String** | Description of the PVM instance snapshot | [optional] |
| **last_update_date** | **Time** | Last Update Date | [optional] |
| **name** | **String** | Name of the PVM instance snapshot |  |
| **percent_complete** | **Integer** | Snapshot completion percentage | [optional] |
| **pvm_instance_id** | **String** | PCloud PVM Instance ID |  |
| **snapshot_id** | **String** | ID of the PVM instance snapshot |  |
| **status** | **String** | Status of the PVM instance snapshot | [optional] |
| **status_detail** | **String** | Detailed information for the last PVM instance snapshot action | [optional] |
| **volume_snapshots** | **Hash&lt;String, String&gt;** | A map of volume snapshots included in the PVM instance snapshot |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::Snapshot.new(
  action: null,
  creation_date: null,
  description: null,
  last_update_date: null,
  name: null,
  percent_complete: null,
  pvm_instance_id: null,
  snapshot_id: null,
  status: null,
  status_detail: null,
  volume_snapshots: null
)
```

