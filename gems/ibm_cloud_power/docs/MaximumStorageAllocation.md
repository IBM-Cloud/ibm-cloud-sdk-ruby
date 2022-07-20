# IbmCloudPower::MaximumStorageAllocation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **storage_type** | **String** | Storage type |  |
| **storage_pool** | **String** | Storage pool |  |
| **max_allocation_size** | **Integer** | Maximum size (GB) that can be currently requested to allocate storage for a given storage type and pool at the time of creation |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::MaximumStorageAllocation.new(
  storage_type: null,
  storage_pool: null,
  max_allocation_size: null
)
```

