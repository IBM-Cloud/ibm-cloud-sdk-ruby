# IbmCloudPower::VolumeOnboardingCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **volumes** | [**Array&lt;AuxiliaryVolumesForOnboarding&gt;**](AuxiliaryVolumesForOnboarding.md) |  |  |
| **description** | **String** | Description of the volume onboarding operation | [optional] |
| **user_tags** | **Array** |  | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::VolumeOnboardingCreate.new(
  volumes: null,
  description: null,
  user_tags: null
)
```

