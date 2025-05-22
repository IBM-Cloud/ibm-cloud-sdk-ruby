# IbmCloudPower::FlashCopyMapping

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **copy_rate** | **Integer** | Indicates the rate of flash copy operation of a volume | [optional] |
| **flash_copy_name** | **String** | Indicates flash copy name of the volume |  |
| **progress** | **Integer** | Indicates the progress of flash copy operation | [optional] |
| **source_volume_name** | **String** | Indicates name of the source volume | [optional] |
| **start_time** | **Time** | Indicates the start time of flash copy operation | [optional] |
| **status** | **String** | Copy status of a volume | [optional] |
| **target_volume_name** | **String** | Indicates name of the target volume | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::FlashCopyMapping.new(
  copy_rate: null,
  flash_copy_name: null,
  progress: null,
  source_volume_name: null,
  start_time: null,
  status: null,
  target_volume_name: null
)
```

