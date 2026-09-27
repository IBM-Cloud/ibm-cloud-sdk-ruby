# IbmCloudPower::VolumeNaming

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **clone_volume_name** | **String** | Name of the clone volume created from the source volume |  |
| **src_volume_id** | **String** | ID of the source volume getting cloned |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::VolumeNaming.new(
  clone_volume_name: null,
  src_volume_id: null
)
```

