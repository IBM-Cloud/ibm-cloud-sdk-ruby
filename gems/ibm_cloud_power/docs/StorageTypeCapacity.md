# IbmCloudPower::StorageTypeCapacity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **maximum_storage_allocation** | [**MaximumStorageAllocation**](MaximumStorageAllocation.md) |  | [optional] |
| **storage_pools_capacity** | [**Array&lt;StoragePoolCapacity&gt;**](StoragePoolCapacity.md) | List of storage pool capacity for storage type | [optional] |
| **storage_type** | **String** | Storage type | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::StorageTypeCapacity.new(
  maximum_storage_allocation: null,
  storage_pools_capacity: null,
  storage_type: null
)
```

