# IbmCloudResourceController::ResourceInstancesApi

All URIs are relative to *https://resource-controller.cloud.ibm.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_lastop_resource_instance**](ResourceInstancesApi.md#cancel_lastop_resource_instance) | **DELETE** /v2/resource_instances/{id}/last_operation | Cancel the in progress last operation of the resource instance |
| [**create_resource_instance**](ResourceInstancesApi.md#create_resource_instance) | **POST** /v2/resource_instances | Create (provision) a new resource instance |
| [**delete_resource_instance**](ResourceInstancesApi.md#delete_resource_instance) | **DELETE** /v2/resource_instances/{id} | Delete a resource instance |
| [**get_resource_instance**](ResourceInstancesApi.md#get_resource_instance) | **GET** /v2/resource_instances/{id} | Get a resource instance |
| [**list_resource_instances**](ResourceInstancesApi.md#list_resource_instances) | **GET** /v2/resource_instances | Get a list of all resource instances |
| [**list_resource_keys_for_instance**](ResourceInstancesApi.md#list_resource_keys_for_instance) | **GET** /v2/resource_instances/{id}/resource_keys | Get a list of all the resource keys for the instance. |
| [**lock_resource_instance**](ResourceInstancesApi.md#lock_resource_instance) | **POST** /v2/resource_instances/{id}/lock | Lock a resource instance |
| [**unlock_resource_instance**](ResourceInstancesApi.md#unlock_resource_instance) | **DELETE** /v2/resource_instances/{id}/lock | Unlock a resource instance |
| [**update_resource_instance**](ResourceInstancesApi.md#update_resource_instance) | **PATCH** /v2/resource_instances/{id} | Update a resource instance |


## cancel_lastop_resource_instance

> <ResourceInstance> cancel_lastop_resource_instance(id)

Cancel the in progress last operation of the resource instance

Cancel the in progress last operation of the resource instance. This is applicable for instances where the in progress last operation is `cancelable`.

### Examples

```ruby
require 'time'
require 'ibm_cloud_resource_controller'
# setup authorization
IbmCloudResourceController.configure do |config|
  # Configure API key authorization: IAM
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = IbmCloudResourceController::ResourceInstancesApi.new
id = 'id_example' # String | The resource instance URL-encoded CRN or GUID.

begin
  # Cancel the in progress last operation of the resource instance
  result = api_instance.cancel_lastop_resource_instance(id)
  p result
rescue IbmCloudResourceController::ApiError => e
  puts "Error when calling ResourceInstancesApi->cancel_lastop_resource_instance: #{e}"
end
```

#### Using the cancel_lastop_resource_instance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceInstance>, Integer, Hash)> cancel_lastop_resource_instance_with_http_info(id)

```ruby
begin
  # Cancel the in progress last operation of the resource instance
  data, status_code, headers = api_instance.cancel_lastop_resource_instance_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceInstance>
rescue IbmCloudResourceController::ApiError => e
  puts "Error when calling ResourceInstancesApi->cancel_lastop_resource_instance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The resource instance URL-encoded CRN or GUID. |  |

### Return type

[**ResourceInstance**](ResourceInstance.md)

### Authorization

[IAM](../README.md#IAM)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_resource_instance

> <ResourceInstance> create_resource_instance(resource_instance_post, opts)

Create (provision) a new resource instance

When you provision a service you get an instance of that service. An instance represents the resource with which you create, and additionally, represents a chargeable record of which billing can occur.

### Examples

```ruby
require 'time'
require 'ibm_cloud_resource_controller'
# setup authorization
IbmCloudResourceController.configure do |config|
  # Configure API key authorization: IAM
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = IbmCloudResourceController::ResourceInstancesApi.new
resource_instance_post = IbmCloudResourceController::ResourceInstancePost.new({name: 'my-instance', target: 'us-south', resource_group: '5c49eabc-f5e8-5881-a37e-2d100a33b3df', resource_plan_id: 'cloudant-standard'}) # ResourceInstancePost | 
opts = {
  entity_lock: true # Boolean | Indicates if the resource instance is locked for further update or delete operations. It does not affect actions performed on child resources like keys. False by default.
}

begin
  # Create (provision) a new resource instance
  result = api_instance.create_resource_instance(resource_instance_post, opts)
  p result
rescue IbmCloudResourceController::ApiError => e
  puts "Error when calling ResourceInstancesApi->create_resource_instance: #{e}"
end
```

#### Using the create_resource_instance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceInstance>, Integer, Hash)> create_resource_instance_with_http_info(resource_instance_post, opts)

```ruby
begin
  # Create (provision) a new resource instance
  data, status_code, headers = api_instance.create_resource_instance_with_http_info(resource_instance_post, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceInstance>
rescue IbmCloudResourceController::ApiError => e
  puts "Error when calling ResourceInstancesApi->create_resource_instance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource_instance_post** | [**ResourceInstancePost**](ResourceInstancePost.md) |  |  |
| **entity_lock** | **Boolean** | Indicates if the resource instance is locked for further update or delete operations. It does not affect actions performed on child resources like keys. False by default. | [optional][default to false] |

### Return type

[**ResourceInstance**](ResourceInstance.md)

### Authorization

[IAM](../README.md#IAM)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_resource_instance

> delete_resource_instance(id, opts)

Delete a resource instance

Delete a resource instance by URL-encoded CRN or GUID. If the resource instance has any resource keys associated with it, use the `recursive=true` parameter to delete it.

### Examples

```ruby
require 'time'
require 'ibm_cloud_resource_controller'
# setup authorization
IbmCloudResourceController.configure do |config|
  # Configure API key authorization: IAM
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = IbmCloudResourceController::ResourceInstancesApi.new
id = 'id_example' # String | The resource instance URL-encoded CRN or GUID.
opts = {
  recursive: true # Boolean | Will delete keys associated with the instance.
}

begin
  # Delete a resource instance
  api_instance.delete_resource_instance(id, opts)
rescue IbmCloudResourceController::ApiError => e
  puts "Error when calling ResourceInstancesApi->delete_resource_instance: #{e}"
end
```

#### Using the delete_resource_instance_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_resource_instance_with_http_info(id, opts)

```ruby
begin
  # Delete a resource instance
  data, status_code, headers = api_instance.delete_resource_instance_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue IbmCloudResourceController::ApiError => e
  puts "Error when calling ResourceInstancesApi->delete_resource_instance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The resource instance URL-encoded CRN or GUID. |  |
| **recursive** | **Boolean** | Will delete keys associated with the instance. | [optional][default to false] |

### Return type

nil (empty response body)

### Authorization

[IAM](../README.md#IAM)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_resource_instance

> <ResourceInstance> get_resource_instance(id)

Get a resource instance

Retrieve a resource instance by URL-encoded CRN or GUID. Find more details on a particular instance, like when it was provisioned and who provisioned it.

### Examples

```ruby
require 'time'
require 'ibm_cloud_resource_controller'
# setup authorization
IbmCloudResourceController.configure do |config|
  # Configure API key authorization: IAM
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = IbmCloudResourceController::ResourceInstancesApi.new
id = 'id_example' # String | The resource instance URL-encoded CRN or GUID.

begin
  # Get a resource instance
  result = api_instance.get_resource_instance(id)
  p result
rescue IbmCloudResourceController::ApiError => e
  puts "Error when calling ResourceInstancesApi->get_resource_instance: #{e}"
end
```

#### Using the get_resource_instance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceInstance>, Integer, Hash)> get_resource_instance_with_http_info(id)

```ruby
begin
  # Get a resource instance
  data, status_code, headers = api_instance.get_resource_instance_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceInstance>
rescue IbmCloudResourceController::ApiError => e
  puts "Error when calling ResourceInstancesApi->get_resource_instance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The resource instance URL-encoded CRN or GUID. |  |

### Return type

[**ResourceInstance**](ResourceInstance.md)

### Authorization

[IAM](../README.md#IAM)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_resource_instances

> <ResourceInstancesList> list_resource_instances(opts)

Get a list of all resource instances

View a list of all available resource instances. Resources is a broad term that could mean anything from a service instance to a virtual machine associated with the customer account.

### Examples

```ruby
require 'time'
require 'ibm_cloud_resource_controller'
# setup authorization
IbmCloudResourceController.configure do |config|
  # Configure API key authorization: IAM
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = IbmCloudResourceController::ResourceInstancesApi.new
opts = {
  guid: 'guid_example', # String | The GUID of the instance.
  name: 'name_example', # String | The human-readable name of the instance.
  resource_group_id: 'resource_group_id_example', # String | The ID of the resource group.
  resource_id: 'resource_id_example', # String | The unique ID of the offering. This value is provided by and stored in the global catalog.
  resource_plan_id: 'resource_plan_id_example', # String | The unique ID of the plan associated with the offering. This value is provided by and stored in the global catalog.
  type: 'type_example', # String | The type of the instance, for example, `service_instance`.
  sub_type: 'sub_type_example', # String | The sub-type of instance, for example, `kms`.
  subscription_id: 'subscription_id_example', # String | The ID of the subscription.
  limit: 56, # Integer | Limit on how many items should be returned. The number of items returned may be less than the specified limit if the caller lacks sufficient access to retrieve certain resource instances.
  start: 'start_example', # String | An optional token that indicates the beginning of the page of results to be returned. Any additional query parameters are ignored if a page token is present. If omitted, the first page of results is returned. This value is obtained from the 'start' query parameter in the 'next_url' field of the operation response.
  state: 'active', # String | The state of the instance. If not specified, instances in state `active`, `inactive`, `failed`, `provisioning` and `pre_provisioning` are returned.
  updated_from: '2021-01-01', # String | Start date inclusive filter.
  updated_to: '2021-01-01', # String | End date inclusive filter.
  sort: 'name', # String | Optional sort property, valid values are `name`, `created_at` and `updated_at`. If specified, the items are sorted by the value of this property.
  order: 'asc' # String | Optional sort order, valid values are `asc` and `desc`.
}

begin
  # Get a list of all resource instances
  result = api_instance.list_resource_instances(opts)
  p result
rescue IbmCloudResourceController::ApiError => e
  puts "Error when calling ResourceInstancesApi->list_resource_instances: #{e}"
end
```

#### Using the list_resource_instances_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceInstancesList>, Integer, Hash)> list_resource_instances_with_http_info(opts)

```ruby
begin
  # Get a list of all resource instances
  data, status_code, headers = api_instance.list_resource_instances_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceInstancesList>
rescue IbmCloudResourceController::ApiError => e
  puts "Error when calling ResourceInstancesApi->list_resource_instances_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | The GUID of the instance. | [optional] |
| **name** | **String** | The human-readable name of the instance. | [optional] |
| **resource_group_id** | **String** | The ID of the resource group. | [optional] |
| **resource_id** | **String** | The unique ID of the offering. This value is provided by and stored in the global catalog. | [optional] |
| **resource_plan_id** | **String** | The unique ID of the plan associated with the offering. This value is provided by and stored in the global catalog. | [optional] |
| **type** | **String** | The type of the instance, for example, &#x60;service_instance&#x60;. | [optional] |
| **sub_type** | **String** | The sub-type of instance, for example, &#x60;kms&#x60;. | [optional] |
| **subscription_id** | **String** | The ID of the subscription. | [optional] |
| **limit** | **Integer** | Limit on how many items should be returned. The number of items returned may be less than the specified limit if the caller lacks sufficient access to retrieve certain resource instances. | [optional][default to 100] |
| **start** | **String** | An optional token that indicates the beginning of the page of results to be returned. Any additional query parameters are ignored if a page token is present. If omitted, the first page of results is returned. This value is obtained from the &#39;start&#39; query parameter in the &#39;next_url&#39; field of the operation response. | [optional] |
| **state** | **String** | The state of the instance. If not specified, instances in state &#x60;active&#x60;, &#x60;inactive&#x60;, &#x60;failed&#x60;, &#x60;provisioning&#x60; and &#x60;pre_provisioning&#x60; are returned. | [optional] |
| **updated_from** | **String** | Start date inclusive filter. | [optional] |
| **updated_to** | **String** | End date inclusive filter. | [optional] |
| **sort** | **String** | Optional sort property, valid values are &#x60;name&#x60;, &#x60;created_at&#x60; and &#x60;updated_at&#x60;. If specified, the items are sorted by the value of this property. | [optional][default to &#39;name&#39;] |
| **order** | **String** | Optional sort order, valid values are &#x60;asc&#x60; and &#x60;desc&#x60;. | [optional][default to &#39;asc&#39;] |

### Return type

[**ResourceInstancesList**](ResourceInstancesList.md)

### Authorization

[IAM](../README.md#IAM)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_resource_keys_for_instance

> <ResourceKeysList> list_resource_keys_for_instance(id, opts)

Get a list of all the resource keys for the instance.

You may have many resource keys for one resource instance. For example, you may have a different resource key for each user or each role.

### Examples

```ruby
require 'time'
require 'ibm_cloud_resource_controller'
# setup authorization
IbmCloudResourceController.configure do |config|
  # Configure API key authorization: IAM
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = IbmCloudResourceController::ResourceInstancesApi.new
id = 'id_example' # String | The resource instance URL-encoded CRN or GUID.
opts = {
  limit: 56, # Integer | Limit on how many items should be returned. The number of items returned may be less than the specified limit if the caller lacks sufficient access to retrieve certain resource keys.
  start: 'start_example', # String | An optional token that indicates the beginning of the page of results to be returned. Any additional query parameters are ignored if a page token is present. If omitted, the first page of results is returned. This value is obtained from the 'start' query parameter in the 'next_url' field of the operation response.
  sort: 'name', # String | Optional sort property, valid values are `name`, `created_at` and `updated_at`. If specified, the items are sorted by the value of this property.
  order: 'asc' # String | Optional sort order, valid values are `asc` and `desc`.
}

begin
  # Get a list of all the resource keys for the instance.
  result = api_instance.list_resource_keys_for_instance(id, opts)
  p result
rescue IbmCloudResourceController::ApiError => e
  puts "Error when calling ResourceInstancesApi->list_resource_keys_for_instance: #{e}"
end
```

#### Using the list_resource_keys_for_instance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceKeysList>, Integer, Hash)> list_resource_keys_for_instance_with_http_info(id, opts)

```ruby
begin
  # Get a list of all the resource keys for the instance.
  data, status_code, headers = api_instance.list_resource_keys_for_instance_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceKeysList>
rescue IbmCloudResourceController::ApiError => e
  puts "Error when calling ResourceInstancesApi->list_resource_keys_for_instance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The resource instance URL-encoded CRN or GUID. |  |
| **limit** | **Integer** | Limit on how many items should be returned. The number of items returned may be less than the specified limit if the caller lacks sufficient access to retrieve certain resource keys. | [optional][default to 100] |
| **start** | **String** | An optional token that indicates the beginning of the page of results to be returned. Any additional query parameters are ignored if a page token is present. If omitted, the first page of results is returned. This value is obtained from the &#39;start&#39; query parameter in the &#39;next_url&#39; field of the operation response. | [optional] |
| **sort** | **String** | Optional sort property, valid values are &#x60;name&#x60;, &#x60;created_at&#x60; and &#x60;updated_at&#x60;. If specified, the items are sorted by the value of this property. | [optional][default to &#39;name&#39;] |
| **order** | **String** | Optional sort order, valid values are &#x60;asc&#x60; and &#x60;desc&#x60;. | [optional][default to &#39;asc&#39;] |

### Return type

[**ResourceKeysList**](ResourceKeysList.md)

### Authorization

[IAM](../README.md#IAM)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## lock_resource_instance

> <ResourceInstance> lock_resource_instance(id)

Lock a resource instance

Locks a resource instance. A locked instance can not be updated or deleted. It does not affect actions performed on child resources like keys.

### Examples

```ruby
require 'time'
require 'ibm_cloud_resource_controller'
# setup authorization
IbmCloudResourceController.configure do |config|
  # Configure API key authorization: IAM
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = IbmCloudResourceController::ResourceInstancesApi.new
id = 'id_example' # String | The resource instance URL-encoded CRN or GUID.

begin
  # Lock a resource instance
  result = api_instance.lock_resource_instance(id)
  p result
rescue IbmCloudResourceController::ApiError => e
  puts "Error when calling ResourceInstancesApi->lock_resource_instance: #{e}"
end
```

#### Using the lock_resource_instance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceInstance>, Integer, Hash)> lock_resource_instance_with_http_info(id)

```ruby
begin
  # Lock a resource instance
  data, status_code, headers = api_instance.lock_resource_instance_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceInstance>
rescue IbmCloudResourceController::ApiError => e
  puts "Error when calling ResourceInstancesApi->lock_resource_instance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The resource instance URL-encoded CRN or GUID. |  |

### Return type

[**ResourceInstance**](ResourceInstance.md)

### Authorization

[IAM](../README.md#IAM)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## unlock_resource_instance

> <ResourceInstance> unlock_resource_instance(id)

Unlock a resource instance

Unlock a resource instance to update or delete it. Unlocking a resource instance does not affect child resources like keys.

### Examples

```ruby
require 'time'
require 'ibm_cloud_resource_controller'
# setup authorization
IbmCloudResourceController.configure do |config|
  # Configure API key authorization: IAM
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = IbmCloudResourceController::ResourceInstancesApi.new
id = 'id_example' # String | The resource instance URL-encoded CRN or GUID.

begin
  # Unlock a resource instance
  result = api_instance.unlock_resource_instance(id)
  p result
rescue IbmCloudResourceController::ApiError => e
  puts "Error when calling ResourceInstancesApi->unlock_resource_instance: #{e}"
end
```

#### Using the unlock_resource_instance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceInstance>, Integer, Hash)> unlock_resource_instance_with_http_info(id)

```ruby
begin
  # Unlock a resource instance
  data, status_code, headers = api_instance.unlock_resource_instance_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceInstance>
rescue IbmCloudResourceController::ApiError => e
  puts "Error when calling ResourceInstancesApi->unlock_resource_instance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The resource instance URL-encoded CRN or GUID. |  |

### Return type

[**ResourceInstance**](ResourceInstance.md)

### Authorization

[IAM](../README.md#IAM)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_resource_instance

> <ResourceInstance> update_resource_instance(id, resource_instance_patch)

Update a resource instance

Use the resource instance URL-encoded CRN or GUID to make updates to the resource instance, like changing the name or plan.

### Examples

```ruby
require 'time'
require 'ibm_cloud_resource_controller'
# setup authorization
IbmCloudResourceController.configure do |config|
  # Configure API key authorization: IAM
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = IbmCloudResourceController::ResourceInstancesApi.new
id = 'id_example' # String | The resource instance URL-encoded CRN or GUID.
resource_instance_patch = IbmCloudResourceController::ResourceInstancePatch.new # ResourceInstancePatch | 

begin
  # Update a resource instance
  result = api_instance.update_resource_instance(id, resource_instance_patch)
  p result
rescue IbmCloudResourceController::ApiError => e
  puts "Error when calling ResourceInstancesApi->update_resource_instance: #{e}"
end
```

#### Using the update_resource_instance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceInstance>, Integer, Hash)> update_resource_instance_with_http_info(id, resource_instance_patch)

```ruby
begin
  # Update a resource instance
  data, status_code, headers = api_instance.update_resource_instance_with_http_info(id, resource_instance_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceInstance>
rescue IbmCloudResourceController::ApiError => e
  puts "Error when calling ResourceInstancesApi->update_resource_instance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The resource instance URL-encoded CRN or GUID. |  |
| **resource_instance_patch** | [**ResourceInstancePatch**](ResourceInstancePatch.md) |  |  |

### Return type

[**ResourceInstance**](ResourceInstance.md)

### Authorization

[IAM](../README.md#IAM)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

