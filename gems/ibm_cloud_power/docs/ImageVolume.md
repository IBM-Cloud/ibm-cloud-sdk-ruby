# IbmCloudPower::ImageVolume

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **volume_id** | **String** | Volume ID |  |
| **name** | **String** | Volume Name |  |
| **size** | **Float** | Volume Size |  |
| **bootable** | **Boolean** | Indicates if the volume is boot capable |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::ImageVolume.new(
  volume_id: null,
  name: null,
  size: null,
  bootable: null
)
```

