# IbmCloudPower::AvailableHost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **capacity** | [**AvailableHostCapacity**](AvailableHostCapacity.md) |  | [optional] |
| **count** | **Integer** | How many hosts of such type/capacities are available | [optional] |
| **sys_type** | **String** | System type | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::AvailableHost.new(
  capacity: null,
  count: null,
  sys_type: null
)
```

