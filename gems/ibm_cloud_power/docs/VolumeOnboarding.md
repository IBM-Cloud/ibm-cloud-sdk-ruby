# IbmCloudPower::VolumeOnboarding

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **creation_timestamp** | **Time** | Indicates the create-time of volume onboarding operation | [optional] |
| **progress** | **Float** | Indicates the progress of volume onboarding operation | [optional] |
| **results** | **Object** |  | [optional] |
| **description** | **String** | Description of the volume onboarding operation | [optional] |
| **id** | **String** | Indicates the volume onboarding operation id |  |
| **input_volumes** | **Array&lt;String&gt;** | List of volumes requested to be onboarded | [optional] |
| **status** | **String** | Indicates the status of volume onboarding operation | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::VolumeOnboarding.new(
  creation_timestamp: null,
  progress: null,
  results: null,
  description: null,
  id: null,
  input_volumes: null,
  status: null
)
```

