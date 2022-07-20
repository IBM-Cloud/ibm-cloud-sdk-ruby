# IbmCloudPower::StoragePoolCapacity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pool_name** | **String** | Pool name | [optional] |
| **storage_type** | **String** | Storage type of the storage pool | [optional] |
| **max_allocation_size** | **Integer** | Maximum size (GB) that can be currently requested to allocate storage for a given storage type and pool at the time of creation |  |
| **total_capacity** | **Integer** | Total pool capacity (GB) | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::StoragePoolCapacity.new(
  pool_name: null,
  storage_type: null,
  max_allocation_size: null,
  total_capacity: null
)
```

