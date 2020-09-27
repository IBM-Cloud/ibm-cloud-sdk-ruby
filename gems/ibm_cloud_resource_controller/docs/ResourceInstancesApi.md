# IbmCloudResourceController::ResourceInstancesApi

All URIs are relative to *https://resource-controller.cloud.ibm.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_resource_instance**](ResourceInstancesApi.md#create_resource_instance) | **POST** /v2/resource_instances | Create (provision) a new resource instance
[**delete_resource_instance**](ResourceInstancesApi.md#delete_resource_instance) | **DELETE** /v2/resource_instances/{id} | Delete a resource instance
[**get_resource_instance**](ResourceInstancesApi.md#get_resource_instance) | **GET** /v2/resource_instances/{id} | Get a resource instance
[**list_resource_instances**](ResourceInstancesApi.md#list_resource_instances) | **GET** /v2/resource_instances | Get a list of all resource instances
[**lock_resource_instance**](ResourceInstancesApi.md#lock_resource_instance) | **POST** /v2/resource_instances/{id}/lock | Lock a resource instance
[**unlock_resource_instance**](ResourceInstancesApi.md#unlock_resource_instance) | **DELETE** /v2/resource_instances/{id}/lock | Unlock a resource instance
[**update_resource_instance**](ResourceInstancesApi.md#update_resource_instance) | **PATCH** /v2/resource_instances/{id} | Update a resource instance



## create_resource_instance

> ResourceInstance create_resource_instance(resource_instance_post, opts)

Create (provision) a new resource instance

Provision a new resource in the specified location for the selected plan.

### Example

```ruby
# load the gem
require 'ibm_cloud_resource_controller'
# setup authorization
IbmCloudResourceController.configure do |config|
  # Configure API key authorization: IAM
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = IbmCloudResourceController::ResourceInstancesApi.new
resource_instance_post = IbmCloudResourceController::ResourceInstancePost.new # ResourceInstancePost | 
opts = {
  entity_lock: 'false' # String | Indicates if the resource instance is locked for further update or delete operations. It does not affect actions performed on child resources like aliases, bindings or keys. False by default.
}

begin
  #Create (provision) a new resource instance
  result = api_instance.create_resource_instance(resource_instance_post, opts)
  p result
rescue IbmCloudResourceController::ApiError => e
  puts "Exception when calling ResourceInstancesApi->create_resource_instance: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resource_instance_post** | [**ResourceInstancePost**](ResourceInstancePost.md)|  | 
 **entity_lock** | **String**| Indicates if the resource instance is locked for further update or delete operations. It does not affect actions performed on child resources like aliases, bindings or keys. False by default. | [optional] [default to &#39;false&#39;]

### Return type

[**ResourceInstance**](ResourceInstance.md)

### Authorization

[IAM](../README.md#IAM)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_resource_instance

> delete_resource_instance(id)

Delete a resource instance

Delete a resource instance by ID.

### Example

```ruby
# load the gem
require 'ibm_cloud_resource_controller'
# setup authorization
IbmCloudResourceController.configure do |config|
  # Configure API key authorization: IAM
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = IbmCloudResourceController::ResourceInstancesApi.new
id = 'id_example' # String | The short or long ID of the instance.

begin
  #Delete a resource instance
  api_instance.delete_resource_instance(id)
rescue IbmCloudResourceController::ApiError => e
  puts "Exception when calling ResourceInstancesApi->delete_resource_instance: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The short or long ID of the instance. | 

### Return type

nil (empty response body)

### Authorization

[IAM](../README.md#IAM)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_resource_instance

> ResourceInstance get_resource_instance(id)

Get a resource instance

Retrieve a resource instance by ID.

### Example

```ruby
# load the gem
require 'ibm_cloud_resource_controller'
# setup authorization
IbmCloudResourceController.configure do |config|
  # Configure API key authorization: IAM
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = IbmCloudResourceController::ResourceInstancesApi.new
id = 'id_example' # String | The short or long ID of the instance.

begin
  #Get a resource instance
  result = api_instance.get_resource_instance(id)
  p result
rescue IbmCloudResourceController::ApiError => e
  puts "Exception when calling ResourceInstancesApi->get_resource_instance: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The short or long ID of the instance. | 

### Return type

[**ResourceInstance**](ResourceInstance.md)

### Authorization

[IAM](../README.md#IAM)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_resource_instances

> ResourceInstancesList list_resource_instances(opts)

Get a list of all resource instances

Get a list of all resource instances.

### Example

```ruby
# load the gem
require 'ibm_cloud_resource_controller'
# setup authorization
IbmCloudResourceController.configure do |config|
  # Configure API key authorization: IAM
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = IbmCloudResourceController::ResourceInstancesApi.new
opts = {
  guid: 'guid_example', # String | When you provision a new resource in the specified location for the selected plan, a GUID (globally unique identifier) is created. This is a unique internal GUID managed by Resource controller that corresponds to the instance.
  name: 'name_example', # String | The human-readable name of the instance.
  resource_group_id: 'resource_group_id_example', # String | Short ID of a resource group.
  resource_id: 'resource_id_example', # String | The unique ID of the offering. This value is provided by and stored in the global catalog.
  resource_plan_id: 'resource_plan_id_example', # String | The unique ID of the plan associated with the offering. This value is provided by and stored in the global catalog.
  type: 'type_example', # String | The type of the instance. For example, `service_instance`.
  sub_type: 'sub_type_example', # String | The sub-type of instance, e.g. `cfaas`.
  limit: 'limit_example', # String | Limit on how many items should be returned.
  updated_from: '2019-01-08T00:00:00.000Z', # String | Start date inclusive filter.
  updated_to: '2019-01-08T00:00:00.000Z' # String | End date inclusive filter.
}

begin
  #Get a list of all resource instances
  result = api_instance.list_resource_instances(opts)
  p result
rescue IbmCloudResourceController::ApiError => e
  puts "Exception when calling ResourceInstancesApi->list_resource_instances: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **guid** | **String**| When you provision a new resource in the specified location for the selected plan, a GUID (globally unique identifier) is created. This is a unique internal GUID managed by Resource controller that corresponds to the instance. | [optional] 
 **name** | **String**| The human-readable name of the instance. | [optional] 
 **resource_group_id** | **String**| Short ID of a resource group. | [optional] 
 **resource_id** | **String**| The unique ID of the offering. This value is provided by and stored in the global catalog. | [optional] 
 **resource_plan_id** | **String**| The unique ID of the plan associated with the offering. This value is provided by and stored in the global catalog. | [optional] 
 **type** | **String**| The type of the instance. For example, &#x60;service_instance&#x60;. | [optional] 
 **sub_type** | **String**| The sub-type of instance, e.g. &#x60;cfaas&#x60;. | [optional] 
 **limit** | **String**| Limit on how many items should be returned. | [optional] 
 **updated_from** | **String**| Start date inclusive filter. | [optional] 
 **updated_to** | **String**| End date inclusive filter. | [optional] 

### Return type

[**ResourceInstancesList**](ResourceInstancesList.md)

### Authorization

[IAM](../README.md#IAM)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## lock_resource_instance

> ResourceInstance lock_resource_instance(id)

Lock a resource instance

Locks a resource instance by ID. A locked instance can not be updated or deleted. It does not affect actions performed on child resources like aliases, bindings or keys.

### Example

```ruby
# load the gem
require 'ibm_cloud_resource_controller'
# setup authorization
IbmCloudResourceController.configure do |config|
  # Configure API key authorization: IAM
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = IbmCloudResourceController::ResourceInstancesApi.new
id = 'id_example' # String | The short or long ID of the instance.

begin
  #Lock a resource instance
  result = api_instance.lock_resource_instance(id)
  p result
rescue IbmCloudResourceController::ApiError => e
  puts "Exception when calling ResourceInstancesApi->lock_resource_instance: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The short or long ID of the instance. | 

### Return type

[**ResourceInstance**](ResourceInstance.md)

### Authorization

[IAM](../README.md#IAM)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## unlock_resource_instance

> ResourceInstance unlock_resource_instance(id)

Unlock a resource instance

Unlocks a resource instance by ID.

### Example

```ruby
# load the gem
require 'ibm_cloud_resource_controller'
# setup authorization
IbmCloudResourceController.configure do |config|
  # Configure API key authorization: IAM
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = IbmCloudResourceController::ResourceInstancesApi.new
id = 'id_example' # String | The short or long ID of the instance.

begin
  #Unlock a resource instance
  result = api_instance.unlock_resource_instance(id)
  p result
rescue IbmCloudResourceController::ApiError => e
  puts "Exception when calling ResourceInstancesApi->unlock_resource_instance: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The short or long ID of the instance. | 

### Return type

[**ResourceInstance**](ResourceInstance.md)

### Authorization

[IAM](../README.md#IAM)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_resource_instance

> ResourceInstance update_resource_instance(id, resource_instance_patch)

Update a resource instance

Update a resource instance by ID.

### Example

```ruby
# load the gem
require 'ibm_cloud_resource_controller'
# setup authorization
IbmCloudResourceController.configure do |config|
  # Configure API key authorization: IAM
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = IbmCloudResourceController::ResourceInstancesApi.new
id = 'id_example' # String | The short or long ID of the instance.
resource_instance_patch = IbmCloudResourceController::ResourceInstancePatch.new # ResourceInstancePatch | 

begin
  #Update a resource instance
  result = api_instance.update_resource_instance(id, resource_instance_patch)
  p result
rescue IbmCloudResourceController::ApiError => e
  puts "Exception when calling ResourceInstancesApi->update_resource_instance: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The short or long ID of the instance. | 
 **resource_instance_patch** | [**ResourceInstancePatch**](ResourceInstancePatch.md)|  | 

### Return type

[**ResourceInstance**](ResourceInstance.md)

### Authorization

[IAM](../README.md#IAM)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

