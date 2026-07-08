# IbmCloudPower::StoragePoolCombined

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pool_name** | **String** | Pool name |  |
| **storage** | **Integer** | Available/Unused pool capacity (GiB) |  |
| **total_storage** | **Integer** | Total pool capacity (GiB) |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::StoragePoolCombined.new(
  pool_name: null,
  storage: null,
  total_storage: null
)
```

