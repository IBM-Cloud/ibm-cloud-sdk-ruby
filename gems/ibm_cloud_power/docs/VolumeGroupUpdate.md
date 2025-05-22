# IbmCloudPower::VolumeGroupUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_volumes** | **Array&lt;String&gt;** | List of volume IDs to add to the volume-group | [optional] |
| **remove_volumes** | **Array&lt;String&gt;** | List of volume IDs to remove from the volume-group | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::VolumeGroupUpdate.new(
  add_volumes: null,
  remove_volumes: null
)
```

