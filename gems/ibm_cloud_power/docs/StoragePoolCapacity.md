# IbmCloudPower::StoragePoolCapacity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **available_capacity** | **Integer** | Available/Unused pool capacity (GB) | [optional] |
| **max_allocation_size** | **Integer** | Maximum allocation storage size (GB) |  |
| **pool_name** | **String** | Pool name | [optional] |
| **replication_enabled** | **Boolean** | true if storage-pool is replication enabled and can be used to manage replication enabled volumes | [optional] |
| **storage_host** | **String** | Storage host/controller for this storage pool | [optional] |
| **storage_type** | **String** | Storage type of the storage pool | [optional] |
| **total_capacity** | **Integer** | Total pool capacity (GB) | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::StoragePoolCapacity.new(
  available_capacity: null,
  max_allocation_size: null,
  pool_name: null,
  replication_enabled: null,
  storage_host: null,
  storage_type: null,
  total_capacity: null
)
```

