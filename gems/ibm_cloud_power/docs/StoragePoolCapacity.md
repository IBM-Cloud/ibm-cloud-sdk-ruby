# IbmCloudPower::StoragePoolCapacity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **max_allocation_size** | **Integer** | Maximum allocation storage size (GB) |  |
| **pool_name** | **String** | Pool name | [optional] |
| **storage_type** | **String** | Storage type of the storage pool | [optional] |
| **total_capacity** | **Integer** | Total pool capacity (GB) | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::StoragePoolCapacity.new(
  max_allocation_size: null,
  pool_name: null,
  storage_type: null,
  total_capacity: null
)
```

