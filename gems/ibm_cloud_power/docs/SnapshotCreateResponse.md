# IbmCloudPower::SnapshotCreateResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **crn** | **String** | The CRN for this resource | [optional] |
| **snapshot_id** | **String** | ID of the PVM instance snapshot |  |
| **user_tags** | **Array&lt;String&gt;** | List of user tags | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::SnapshotCreateResponse.new(
  crn: null,
  snapshot_id: null,
  user_tags: null
)
```

