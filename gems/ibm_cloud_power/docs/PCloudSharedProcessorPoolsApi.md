# IbmCloudPower::PCloudSharedProcessorPoolsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**pcloud_sharedprocessorpools_delete**](PCloudSharedProcessorPoolsApi.md#pcloud_sharedprocessorpools_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/shared-processor-pools/{shared_processor_pool_id} | Delete a Shared Processor Pool from a cloud instance |
| [**pcloud_sharedprocessorpools_get**](PCloudSharedProcessorPoolsApi.md#pcloud_sharedprocessorpools_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/shared-processor-pools/{shared_processor_pool_id} | Get the detail of a Shared Processor Pool for a cloud instance |
| [**pcloud_sharedprocessorpools_getall**](PCloudSharedProcessorPoolsApi.md#pcloud_sharedprocessorpools_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/shared-processor-pools | Get the list of Shared Processor Pools for a cloud instance |
| [**pcloud_sharedprocessorpools_post**](PCloudSharedProcessorPoolsApi.md#pcloud_sharedprocessorpools_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/shared-processor-pools | Create a new Shared Processor Pool |
| [**pcloud_sharedprocessorpools_put**](PCloudSharedProcessorPoolsApi.md#pcloud_sharedprocessorpools_put) | **PUT** /pcloud/v1/cloud-instances/{cloud_instance_id}/shared-processor-pools/{shared_processor_pool_id} | Update a Shared Processor Pool for a cloud instance |


## pcloud_sharedprocessorpools_delete

> Object pcloud_sharedprocessorpools_delete(cloud_instance_id, shared_processor_pool_id)

Delete a Shared Processor Pool from a cloud instance

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudSharedProcessorPoolsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
shared_processor_pool_id = 'shared_processor_pool_id_example' # String | Shared Processor Pool ID or Name

begin
  # Delete a Shared Processor Pool from a cloud instance
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
  # Delete a Shared Processor Pool from a cloud instance
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
| **shared_processor_pool_id** | **String** | Shared Processor Pool ID or Name |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## pcloud_sharedprocessorpools_get

> <SharedProcessorPoolDetail> pcloud_sharedprocessorpools_get(cloud_instance_id, shared_processor_pool_id)

Get the detail of a Shared Processor Pool for a cloud instance

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudSharedProcessorPoolsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
shared_processor_pool_id = 'shared_processor_pool_id_example' # String | Shared Processor Pool ID or Name

begin
  # Get the detail of a Shared Processor Pool for a cloud instance
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
  # Get the detail of a Shared Processor Pool for a cloud instance
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
| **shared_processor_pool_id** | **String** | Shared Processor Pool ID or Name |  |

### Return type

[**SharedProcessorPoolDetail**](SharedProcessorPoolDetail.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_sharedprocessorpools_getall

> <SharedProcessorPools> pcloud_sharedprocessorpools_getall(cloud_instance_id)

Get the list of Shared Processor Pools for a cloud instance

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudSharedProcessorPoolsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance

begin
  # Get the list of Shared Processor Pools for a cloud instance
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
  # Get the list of Shared Processor Pools for a cloud instance
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

Create a new Shared Processor Pool

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudSharedProcessorPoolsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
body = IbmCloudPower::SharedProcessorPoolCreate.new({host_group: 'host_group_example', name: 'name_example', reserved_cores: 37}) # SharedProcessorPoolCreate | Parameters for the creation of a new Shared Processor Pool

begin
  # Create a new Shared Processor Pool
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
  # Create a new Shared Processor Pool
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
| **body** | [**SharedProcessorPoolCreate**](SharedProcessorPoolCreate.md) | Parameters for the creation of a new Shared Processor Pool |  |

### Return type

[**SharedProcessorPool**](SharedProcessorPool.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_sharedprocessorpools_put

> <SharedProcessorPool> pcloud_sharedprocessorpools_put(cloud_instance_id, shared_processor_pool_id, body)

Update a Shared Processor Pool for a cloud instance

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudSharedProcessorPoolsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
shared_processor_pool_id = 'shared_processor_pool_id_example' # String | Shared Processor Pool ID or Name
body = IbmCloudPower::SharedProcessorPoolUpdate.new # SharedProcessorPoolUpdate | Parameters for the update of a Shared Processor Pool

begin
  # Update a Shared Processor Pool for a cloud instance
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
  # Update a Shared Processor Pool for a cloud instance
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
| **shared_processor_pool_id** | **String** | Shared Processor Pool ID or Name |  |
| **body** | [**SharedProcessorPoolUpdate**](SharedProcessorPoolUpdate.md) | Parameters for the update of a Shared Processor Pool |  |

### Return type

[**SharedProcessorPool**](SharedProcessorPool.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

