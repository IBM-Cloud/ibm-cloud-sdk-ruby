# IbmCloudPower::SnapshotCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Description of the PVM instance snapshot | [optional] |
| **name** | **String** | Name of the PVM instance snapshot to create |  |
| **user_tags** | **Array** |  | [optional] |
| **volume_ids** | **Array&lt;String&gt;** | List of volumes to include in the PVM instance snapshot | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::SnapshotCreate.new(
  description: null,
  name: null,
  user_tags: null,
  volume_ids: null
)
```

