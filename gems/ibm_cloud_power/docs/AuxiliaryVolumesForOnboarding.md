# IbmCloudPower::AuxiliaryVolumesForOnboarding

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auxiliary_volumes** | [**Array&lt;AuxiliaryVolumesForOnboardingAuxiliaryVolumesInner&gt;**](AuxiliaryVolumesForOnboardingAuxiliaryVolumesInner.md) |  |  |
| **source_crn** | **String** | The CRN of the workspace in which the primary volume is located |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::AuxiliaryVolumesForOnboarding.new(
  auxiliary_volumes: null,
  source_crn: null
)
```

