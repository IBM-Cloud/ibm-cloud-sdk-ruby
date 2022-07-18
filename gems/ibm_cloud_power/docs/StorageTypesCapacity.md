# IbmCloudPower::StorageTypesCapacity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **maximum_storage_allocation** | [**MaximumStorageAllocation**](MaximumStorageAllocation.md) |  | [optional] |
| **storage_types_capacity** | [**Array&lt;StorageTypeCapacity&gt;**](StorageTypeCapacity.md) |  | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::StorageTypesCapacity.new(
  maximum_storage_allocation: null,
  storage_types_capacity: null
)
```

