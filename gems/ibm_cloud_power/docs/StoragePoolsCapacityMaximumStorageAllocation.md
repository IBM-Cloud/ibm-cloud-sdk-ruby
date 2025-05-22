# IbmCloudPower::StoragePoolsCapacityMaximumStorageAllocation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **max_allocation_size** | **Integer** | Maximum allocation storage size (GB) |  |
| **storage_pool** | **String** | Storage pool |  |
| **storage_type** | **String** | Storage type |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::StoragePoolsCapacityMaximumStorageAllocation.new(
  max_allocation_size: null,
  storage_pool: null,
  storage_type: null
)
```

