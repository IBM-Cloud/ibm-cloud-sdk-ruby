# IbmCloudPower::PCloudStorageCapacityApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**pcloud_storagecapacity_pools_get**](PCloudStorageCapacityApi.md#pcloud_storagecapacity_pools_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/storage-capacity/storage-pools/{storage_pool_name} | Storage capacity for a storage pool in a region |
| [**pcloud_storagecapacity_pools_getall**](PCloudStorageCapacityApi.md#pcloud_storagecapacity_pools_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/storage-capacity/storage-pools | Storage capacity for all available storage pools in a region |
| [**pcloud_storagecapacity_types_get**](PCloudStorageCapacityApi.md#pcloud_storagecapacity_types_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/storage-capacity/storage-types/{storage_type_name} | Storage capacity for a storage type in a region |
| [**pcloud_storagecapacity_types_getall**](PCloudStorageCapacityApi.md#pcloud_storagecapacity_types_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/storage-capacity/storage-types | Storage capacity for all available storage types in a region |


## pcloud_storagecapacity_pools_get

> <StoragePoolCapacity> pcloud_storagecapacity_pools_get(cloud_instance_id, storage_pool_name)

Storage capacity for a storage pool in a region

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudStorageCapacityApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
storage_pool_name = 'storage_pool_name_example' # String | Storage pool name

begin
  # Storage capacity for a storage pool in a region
  result = api_instance.pcloud_storagecapacity_pools_get(cloud_instance_id, storage_pool_name)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudStorageCapacityApi->pcloud_storagecapacity_pools_get: #{e}"
end
```

#### Using the pcloud_storagecapacity_pools_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StoragePoolCapacity>, Integer, Hash)> pcloud_storagecapacity_pools_get_with_http_info(cloud_instance_id, storage_pool_name)

```ruby
begin
  # Storage capacity for a storage pool in a region
  data, status_code, headers = api_instance.pcloud_storagecapacity_pools_get_with_http_info(cloud_instance_id, storage_pool_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StoragePoolCapacity>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudStorageCapacityApi->pcloud_storagecapacity_pools_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **storage_pool_name** | **String** | Storage pool name |  |

### Return type

[**StoragePoolCapacity**](StoragePoolCapacity.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_storagecapacity_pools_getall

> <StoragePoolsCapacity> pcloud_storagecapacity_pools_getall(cloud_instance_id)

Storage capacity for all available storage pools in a region

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudStorageCapacityApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance

begin
  # Storage capacity for all available storage pools in a region
  result = api_instance.pcloud_storagecapacity_pools_getall(cloud_instance_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudStorageCapacityApi->pcloud_storagecapacity_pools_getall: #{e}"
end
```

#### Using the pcloud_storagecapacity_pools_getall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StoragePoolsCapacity>, Integer, Hash)> pcloud_storagecapacity_pools_getall_with_http_info(cloud_instance_id)

```ruby
begin
  # Storage capacity for all available storage pools in a region
  data, status_code, headers = api_instance.pcloud_storagecapacity_pools_getall_with_http_info(cloud_instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StoragePoolsCapacity>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudStorageCapacityApi->pcloud_storagecapacity_pools_getall_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |

### Return type

[**StoragePoolsCapacity**](StoragePoolsCapacity.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_storagecapacity_types_get

> <StorageTypeCapacity> pcloud_storagecapacity_types_get(cloud_instance_id, storage_type_name)

Storage capacity for a storage type in a region

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudStorageCapacityApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
storage_type_name = 'storage_type_name_example' # String | Storage type name

begin
  # Storage capacity for a storage type in a region
  result = api_instance.pcloud_storagecapacity_types_get(cloud_instance_id, storage_type_name)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudStorageCapacityApi->pcloud_storagecapacity_types_get: #{e}"
end
```

#### Using the pcloud_storagecapacity_types_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorageTypeCapacity>, Integer, Hash)> pcloud_storagecapacity_types_get_with_http_info(cloud_instance_id, storage_type_name)

```ruby
begin
  # Storage capacity for a storage type in a region
  data, status_code, headers = api_instance.pcloud_storagecapacity_types_get_with_http_info(cloud_instance_id, storage_type_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StorageTypeCapacity>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudStorageCapacityApi->pcloud_storagecapacity_types_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **storage_type_name** | **String** | Storage type name |  |

### Return type

[**StorageTypeCapacity**](StorageTypeCapacity.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_storagecapacity_types_getall

> <StorageTypesCapacity> pcloud_storagecapacity_types_getall(cloud_instance_id)

Storage capacity for all available storage types in a region

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudStorageCapacityApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance

begin
  # Storage capacity for all available storage types in a region
  result = api_instance.pcloud_storagecapacity_types_getall(cloud_instance_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudStorageCapacityApi->pcloud_storagecapacity_types_getall: #{e}"
end
```

#### Using the pcloud_storagecapacity_types_getall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorageTypesCapacity>, Integer, Hash)> pcloud_storagecapacity_types_getall_with_http_info(cloud_instance_id)

```ruby
begin
  # Storage capacity for all available storage types in a region
  data, status_code, headers = api_instance.pcloud_storagecapacity_types_getall_with_http_info(cloud_instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StorageTypesCapacity>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudStorageCapacityApi->pcloud_storagecapacity_types_getall_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |

### Return type

[**StorageTypesCapacity**](StorageTypesCapacity.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

