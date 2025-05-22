# IbmCloudPower::VolumeOnboardingCreateVolumesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auxiliary_volumes** | [**Array&lt;AuxiliaryVolumesForOnboardingAuxiliaryVolumesInner&gt;**](AuxiliaryVolumesForOnboardingAuxiliaryVolumesInner.md) |  |  |
| **source_crn** | **String** | CRN of source ServiceBroker instance from where auxiliary volumes need to be onboarded |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::VolumeOnboardingCreateVolumesInner.new(
  auxiliary_volumes: null,
  source_crn: null
)
```

