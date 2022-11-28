# IbmCloudPower::AuxiliaryVolumesForOnboarding

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auxiliary_volumes** | [**Array&lt;AuxiliaryVolumeForOnboarding&gt;**](AuxiliaryVolumeForOnboarding.md) |  |  |
| **source_crn** | **String** | CRN of source ServiceBroker instance from where auxiliary volumes need to be onboarded |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::AuxiliaryVolumesForOnboarding.new(
  auxiliary_volumes: null,
  source_crn: null
)
```

