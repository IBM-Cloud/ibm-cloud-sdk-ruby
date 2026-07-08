# IbmCloudPower::SnapshotUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Description of the PVM instance snapshot with a maximum of 255 characters allowed. | [optional] |
| **name** | **String** | Name of the PVM instance snapshot | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::SnapshotUpdate.new(
  description: null,
  name: null
)
```

