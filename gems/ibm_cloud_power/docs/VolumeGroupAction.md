# IbmCloudPower::VolumeGroupAction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reset** | [**VolumeGroupActionReset**](VolumeGroupActionReset.md) |  | [optional] |
| **start** | [**VolumeGroupActionStart**](VolumeGroupActionStart.md) |  | [optional] |
| **stop** | [**VolumeGroupActionStop**](VolumeGroupActionStop.md) |  | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::VolumeGroupAction.new(
  reset: null,
  start: null,
  stop: null
)
```

