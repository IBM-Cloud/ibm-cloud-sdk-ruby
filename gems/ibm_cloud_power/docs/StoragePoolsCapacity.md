# IbmCloudPower::StoragePoolsCapacity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **maximum_storage_allocation** | [**MaximumStorageAllocation**](MaximumStorageAllocation.md) |  | [optional] |
| **storage_pools_capacity** | [**Array&lt;StoragePoolCapacity&gt;**](StoragePoolCapacity.md) |  | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::StoragePoolsCapacity.new(
  maximum_storage_allocation: null,
  storage_pools_capacity: null
)
```

