# IbmCloudPower::StorageTypeCapacity

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**storage_type** | **String** | Storage type | [optional] 
**maximum_storage_allocation** | [**MaximumStorageAllocation**](MaximumStorageAllocation.md) |  | [optional] 
**storage_pools_capacity** | [**Array&lt;StoragePoolCapacity&gt;**](StoragePoolCapacity.md) | List of storage pool capacity for storage type | [optional] 

## Code Sample

```ruby
require 'IbmCloudPower'

instance = IbmCloudPower::StorageTypeCapacity.new(storage_type: null,
                                 maximum_storage_allocation: null,
                                 storage_pools_capacity: null)
```


