# IbmCloudPower::UpdateVolume

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name | [optional] |
| **size** | **Float** | New Volume size | [optional] |
| **shareable** | **Boolean** | Indicates if the volume is shareable between VMs | [optional] |
| **bootable** | **Boolean** | Indicates if the volume is boot capable | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::UpdateVolume.new(
  name: null,
  size: null,
  shareable: null,
  bootable: null
)
```

