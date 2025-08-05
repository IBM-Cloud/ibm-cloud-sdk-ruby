# IbmCloudPower::SnapshotCreateResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **crn** | **String** |  | [optional] |
| **snapshot_id** | **String** | ID of the PVM instance snapshot |  |
| **user_tags** | **Array** |  | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::SnapshotCreateResponse.new(
  crn: null,
  snapshot_id: null,
  user_tags: null
)
```

