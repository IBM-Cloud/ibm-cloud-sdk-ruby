# IbmCloudPower::VolumeOnboardingAllOfResults

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **onboarded_volumes** | **Array&lt;String&gt;** | List of volumes which are onboarded successfully | [optional] |
| **volume_onboarding_failures** | [**Array&lt;VolumeOnboardingAllOfResultsVolumeOnboardingFailures&gt;**](VolumeOnboardingAllOfResultsVolumeOnboardingFailures.md) |  | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::VolumeOnboardingAllOfResults.new(
  onboarded_volumes: null,
  volume_onboarding_failures: null
)
```

