# IbmCloudPower::ClonedVolume

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloned_volume_id** | **String** | ID of the new cloned volume | [optional] |
| **source_volume_id** | **String** | ID of the source volume to be cloned | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::ClonedVolume.new(
  cloned_volume_id: null,
  source_volume_id: null
)
```

