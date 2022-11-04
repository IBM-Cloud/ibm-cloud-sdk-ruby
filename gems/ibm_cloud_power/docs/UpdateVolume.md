# IbmCloudPower::UpdateVolume

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bootable** | **Boolean** | Indicates if the volume is boot capable | [optional] |
| **name** | **String** | Name | [optional] |
| **shareable** | **Boolean** | Indicates if the volume is shareable between VMs | [optional] |
| **size** | **Float** | New Volume size | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::UpdateVolume.new(
  bootable: null,
  name: null,
  shareable: null,
  size: null
)
```

