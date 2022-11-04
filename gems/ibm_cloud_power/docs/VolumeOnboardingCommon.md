# IbmCloudPower::VolumeOnboardingCommon

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Description of the volume onboarding operation | [optional] |
| **id** | **String** | Indicates the volume onboarding operation id |  |
| **input_volumes** | **Array&lt;String&gt;** | List of volumes requested to be onboarded | [optional] |
| **status** | **String** | Indicates the status of volume onboarding operation | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::VolumeOnboardingCommon.new(
  description: null,
  id: null,
  input_volumes: null,
  status: null
)
```

