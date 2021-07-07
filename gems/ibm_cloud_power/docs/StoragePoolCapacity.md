# IbmCloudPower::StoragePoolCapacity

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pool_name** | **String** | Pool name | [optional] 
**storage_type** | **String** | Storage type of the storage pool | [optional] 
**max_allocation_size** | **Integer** | Maximum allocation storage size (GB) | 
**total_capacity** | **Integer** | Total pool capacity (GB) | [optional] 

## Code Sample

```ruby
require 'IbmCloudPower'

instance = IbmCloudPower::StoragePoolCapacity.new(pool_name: null,
                                 storage_type: null,
                                 max_allocation_size: null,
                                 total_capacity: null)
```


