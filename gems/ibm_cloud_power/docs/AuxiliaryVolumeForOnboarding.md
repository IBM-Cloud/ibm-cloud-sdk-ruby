# IbmCloudPower::AuxiliaryVolumeForOnboarding

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aux_volume_name** | **String** | auxiliary volume name at storage host level |  |
| **name** | **String** | display name of auxVolumeName once onboarded,auxVolumeName will be set to display name if not provided. | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::AuxiliaryVolumeForOnboarding.new(
  aux_volume_name: null,
  name: null
)
```

