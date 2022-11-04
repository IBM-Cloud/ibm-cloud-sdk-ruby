# IbmCloudPower::VolumeOnboardingFailure

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **failure_message** | **String** | The failure reason for the volumes which have failed to be onboarded | [optional] |
| **volumes** | **Array&lt;String&gt;** | List of volumes which have failed to be onboarded | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::VolumeOnboardingFailure.new(
  failure_message: null,
  volumes: null
)
```

