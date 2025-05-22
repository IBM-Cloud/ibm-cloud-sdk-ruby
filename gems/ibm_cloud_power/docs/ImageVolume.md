# IbmCloudPower::ImageVolume

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bootable** | **Boolean** | Indicates if the volume is boot capable |  |
| **name** | **String** | Volume Name |  |
| **size** | **Float** | Volume Size |  |
| **volume_id** | **String** | Volume ID |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::ImageVolume.new(
  bootable: null,
  name: null,
  size: null,
  volume_id: null
)
```

