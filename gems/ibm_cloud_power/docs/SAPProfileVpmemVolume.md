# IbmCloudPower::SAPProfileVpmemVolume

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **max_percent** | **Integer** | Maximum percent of memory to be assigned for carved out vPMEM volume | [optional] |
| **min_percent** | **Integer** | Minimum percent of memory to be assigned for carved out vPMEM volume | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::SAPProfileVpmemVolume.new(
  max_percent: null,
  min_percent: null
)
```

