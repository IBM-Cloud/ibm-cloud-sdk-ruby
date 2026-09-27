# IbmCloudPower::PCloudSharedProcessorPoolsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**pcloud_sharedprocessorpools_delete**](PCloudSharedProcessorPoolsApi.md#pcloud_sharedprocessorpools_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/shared-processor-pools/{shared_processor_pool_id} | Delete a shared processor pool |
| [**pcloud_sharedprocessorpools_get**](PCloudSharedProcessorPoolsApi.md#pcloud_sharedprocessorpools_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/shared-processor-pools/{shared_processor_pool_id} | Get a shared processor pool |
| [**pcloud_sharedprocessorpools_getall**](PCloudSharedProcessorPoolsApi.md#pcloud_sharedprocessorpools_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/shared-processor-pools | List all shared processor pools |
| [**pcloud_sharedprocessorpools_post**](PCloudSharedProcessorPoolsApi.md#pcloud_sharedprocessorpools_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/shared-processor-pools | Create a new shared processor pool |
| [**pcloud_sharedprocessorpools_put**](PCloudSharedProcessorPoolsApi.md#pcloud_sharedprocessorpools_put) | **PUT** /pcloud/v1/cloud-instances/{cloud_instance_id}/shared-processor-pools/{shared_processor_pool_id} | Update a shared processor pool |


## pcloud_sharedprocessorpools_delete

> Object pcloud_sharedprocessorpools_delete(cloud_instance_id, shared_processor_pool_id)

Delete a shared processor pool

Deletes a shared processor pool (SPP) from the specified workspace. The pool must have no virtual server instances deployed before it can be deleted.

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudSharedProcessorPoolsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
shared_processor_pool_id = 'shared_processor_pool_id_example' # String | The unique identifier or name of the shared processor pool.

begin
  # Delete a shared processor pool
  result = api_instance.pcloud_sharedprocessorpools_delete(cloud_instance_id, shared_processor_pool_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudSharedProcessorPoolsApi->pcloud_sharedprocessorpools_delete: #{e}"
end
```

#### Using the pcloud_sharedprocessorpools_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> pcloud_sharedprocessorpools_delete_with_http_info(cloud_instance_id, shared_processor_pool_id)

```ruby
begin
  # Delete a shared processor pool
  data, status_code, headers = api_instance.pcloud_sharedprocessorpools_delete_with_http_info(cloud_instance_id, shared_processor_pool_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudSharedProcessorPoolsApi->pcloud_sharedprocessorpools_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **shared_processor_pool_id** | **String** | The unique identifier or name of the shared processor pool. |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_sharedprocessorpools_get

> <SharedProcessorPoolDetail> pcloud_sharedprocessorpools_get(cloud_instance_id, shared_processor_pool_id)

Get a shared processor pool

Retrieves the details of a shared processor pool (SPP) in the specified workspace.

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudSharedProcessorPoolsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
shared_processor_pool_id = 'shared_processor_pool_id_example' # String | The unique identifier or name of the shared processor pool.

begin
  # Get a shared processor pool
  result = api_instance.pcloud_sharedprocessorpools_get(cloud_instance_id, shared_processor_pool_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudSharedProcessorPoolsApi->pcloud_sharedprocessorpools_get: #{e}"
end
```

#### Using the pcloud_sharedprocessorpools_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SharedProcessorPoolDetail>, Integer, Hash)> pcloud_sharedprocessorpools_get_with_http_info(cloud_instance_id, shared_processor_pool_id)

```ruby
begin
  # Get a shared processor pool
  data, status_code, headers = api_instance.pcloud_sharedprocessorpools_get_with_http_info(cloud_instance_id, shared_processor_pool_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SharedProcessorPoolDetail>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudSharedProcessorPoolsApi->pcloud_sharedprocessorpools_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **shared_processor_pool_id** | **String** | The unique identifier or name of the shared processor pool. |  |

### Return type

[**SharedProcessorPoolDetail**](SharedProcessorPoolDetail.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_sharedprocessorpools_getall

> <SharedProcessorPools> pcloud_sharedprocessorpools_getall(cloud_instance_id)

List all shared processor pools

Lists all shared processor pools belonging to the specified workspace.

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudSharedProcessorPoolsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance

begin
  # List all shared processor pools
  result = api_instance.pcloud_sharedprocessorpools_getall(cloud_instance_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudSharedProcessorPoolsApi->pcloud_sharedprocessorpools_getall: #{e}"
end
```

#### Using the pcloud_sharedprocessorpools_getall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SharedProcessorPools>, Integer, Hash)> pcloud_sharedprocessorpools_getall_with_http_info(cloud_instance_id)

```ruby
begin
  # List all shared processor pools
  data, status_code, headers = api_instance.pcloud_sharedprocessorpools_getall_with_http_info(cloud_instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SharedProcessorPools>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudSharedProcessorPoolsApi->pcloud_sharedprocessorpools_getall_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |

### Return type

[**SharedProcessorPools**](SharedProcessorPools.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_sharedprocessorpools_post

> <SharedProcessorPool> pcloud_sharedprocessorpools_post(cloud_instance_id, body)

Create a new shared processor pool

Creates a new shared processor pool (SPP) in the specified workspace.

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudSharedProcessorPoolsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
body = IbmCloudPower::SharedProcessorPoolCreate.new({host_group: 'host_group_example', name: 'name_example', reserved_cores: 37}) # SharedProcessorPoolCreate | The shared processor pool creation parameters.

begin
  # Create a new shared processor pool
  result = api_instance.pcloud_sharedprocessorpools_post(cloud_instance_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudSharedProcessorPoolsApi->pcloud_sharedprocessorpools_post: #{e}"
end
```

#### Using the pcloud_sharedprocessorpools_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SharedProcessorPool>, Integer, Hash)> pcloud_sharedprocessorpools_post_with_http_info(cloud_instance_id, body)

```ruby
begin
  # Create a new shared processor pool
  data, status_code, headers = api_instance.pcloud_sharedprocessorpools_post_with_http_info(cloud_instance_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SharedProcessorPool>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudSharedProcessorPoolsApi->pcloud_sharedprocessorpools_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **body** | [**SharedProcessorPoolCreate**](SharedProcessorPoolCreate.md) | The shared processor pool creation parameters. |  |

### Return type

[**SharedProcessorPool**](SharedProcessorPool.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_sharedprocessorpools_put

> <SharedProcessorPool> pcloud_sharedprocessorpools_put(cloud_instance_id, shared_processor_pool_id, body)

Update a shared processor pool

Updates the name or reserved core count of a shared processor pool (SPP) in the specified workspace.

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudSharedProcessorPoolsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
shared_processor_pool_id = 'shared_processor_pool_id_example' # String | The unique identifier or name of the shared processor pool.
body = IbmCloudPower::SharedProcessorPoolUpdate.new # SharedProcessorPoolUpdate | The shared processor pool update parameters.

begin
  # Update a shared processor pool
  result = api_instance.pcloud_sharedprocessorpools_put(cloud_instance_id, shared_processor_pool_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudSharedProcessorPoolsApi->pcloud_sharedprocessorpools_put: #{e}"
end
```

#### Using the pcloud_sharedprocessorpools_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SharedProcessorPool>, Integer, Hash)> pcloud_sharedprocessorpools_put_with_http_info(cloud_instance_id, shared_processor_pool_id, body)

```ruby
begin
  # Update a shared processor pool
  data, status_code, headers = api_instance.pcloud_sharedprocessorpools_put_with_http_info(cloud_instance_id, shared_processor_pool_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SharedProcessorPool>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudSharedProcessorPoolsApi->pcloud_sharedprocessorpools_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **shared_processor_pool_id** | **String** | The unique identifier or name of the shared processor pool. |  |
| **body** | [**SharedProcessorPoolUpdate**](SharedProcessorPoolUpdate.md) | The shared processor pool update parameters. |  |

### Return type

[**SharedProcessorPool**](SharedProcessorPool.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

