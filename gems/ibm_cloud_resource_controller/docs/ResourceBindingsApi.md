# IbmCloudResourceController::ResourceBindingsApi

All URIs are relative to *https://resource-controller.cloud.ibm.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_resource_binding**](ResourceBindingsApi.md#create_resource_binding) | **POST** /v2/resource_bindings | Create a new resource binding
[**delete_resource_binding**](ResourceBindingsApi.md#delete_resource_binding) | **DELETE** /v2/resource_bindings/{id} | Delete a resource binding
[**get_resource_binding**](ResourceBindingsApi.md#get_resource_binding) | **GET** /v2/resource_bindings/{id} | Get a resource binding
[**list_resource_bindings**](ResourceBindingsApi.md#list_resource_bindings) | **GET** /v2/resource_bindings | Get a list of all resource bindings
[**update_resource_binding**](ResourceBindingsApi.md#update_resource_binding) | **PATCH** /v2/resource_bindings/{id} | Update a resource binding



## create_resource_binding

> ResourceBinding create_resource_binding(resource_binding_post)

Create a new resource binding

Create a new resource binding.

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

api_instance = IbmCloudResourceController::ResourceBindingsApi.new
resource_binding_post = IbmCloudResourceController::ResourceBindingPost.new # ResourceBindingPost | 

begin
  #Create a new resource binding
  result = api_instance.create_resource_binding(resource_binding_post)
  p result
rescue IbmCloudResourceController::ApiError => e
  puts "Exception when calling ResourceBindingsApi->create_resource_binding: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resource_binding_post** | [**ResourceBindingPost**](ResourceBindingPost.md)|  | 

### Return type

[**ResourceBinding**](ResourceBinding.md)

### Authorization

[IAM](../README.md#IAM)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_resource_binding

> delete_resource_binding(id)

Delete a resource binding

Delete a resource binding by ID

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

api_instance = IbmCloudResourceController::ResourceBindingsApi.new
id = 'id_example' # String | The short or long ID of the binding.

begin
  #Delete a resource binding
  api_instance.delete_resource_binding(id)
rescue IbmCloudResourceController::ApiError => e
  puts "Exception when calling ResourceBindingsApi->delete_resource_binding: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The short or long ID of the binding. | 

### Return type

nil (empty response body)

### Authorization

[IAM](../README.md#IAM)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_resource_binding

> ResourceBinding get_resource_binding(id)

Get a resource binding

Retrieve a resource binding by ID.

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

api_instance = IbmCloudResourceController::ResourceBindingsApi.new
id = 'id_example' # String | The short or long ID of the binding.

begin
  #Get a resource binding
  result = api_instance.get_resource_binding(id)
  p result
rescue IbmCloudResourceController::ApiError => e
  puts "Exception when calling ResourceBindingsApi->get_resource_binding: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The short or long ID of the binding. | 

### Return type

[**ResourceBinding**](ResourceBinding.md)

### Authorization

[IAM](../README.md#IAM)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_resource_bindings

> ResourceBindingsList list_resource_bindings(opts)

Get a list of all resource bindings

Get a list of all resource bindings.

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

api_instance = IbmCloudResourceController::ResourceBindingsApi.new
opts = {
  guid: 'guid_example', # String | The short ID of the binding.
  name: 'name_example', # String | The human-readable name of the binding.
  resource_group_id: 'resource_group_id_example', # String | Short ID of the resource group.
  resource_id: 'resource_id_example', # String | The unique ID of the offering (service name). This value is provided by and stored in the global catalog.
  region_binding_id: 'region_binding_id_example', # String | Short ID of the binding in the specific targeted environment, e.g. service_binding_id in a given IBM Cloud environment.
  limit: 'limit_example', # String | Limit on how many items should be returned
  updated_from: '2019-01-08T00:00:00.000Z', # String | Start date inclusive filter.
  updated_to: '2019-01-08T00:00:00.000Z' # String | End date inclusive filter.
}

begin
  #Get a list of all resource bindings
  result = api_instance.list_resource_bindings(opts)
  p result
rescue IbmCloudResourceController::ApiError => e
  puts "Exception when calling ResourceBindingsApi->list_resource_bindings: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **guid** | **String**| The short ID of the binding. | [optional] 
 **name** | **String**| The human-readable name of the binding. | [optional] 
 **resource_group_id** | **String**| Short ID of the resource group. | [optional] 
 **resource_id** | **String**| The unique ID of the offering (service name). This value is provided by and stored in the global catalog. | [optional] 
 **region_binding_id** | **String**| Short ID of the binding in the specific targeted environment, e.g. service_binding_id in a given IBM Cloud environment. | [optional] 
 **limit** | **String**| Limit on how many items should be returned | [optional] 
 **updated_from** | **String**| Start date inclusive filter. | [optional] 
 **updated_to** | **String**| End date inclusive filter. | [optional] 

### Return type

[**ResourceBindingsList**](ResourceBindingsList.md)

### Authorization

[IAM](../README.md#IAM)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_resource_binding

> ResourceBinding update_resource_binding(id, resource_binding_patch)

Update a resource binding

Update a resource binding by ID.

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

api_instance = IbmCloudResourceController::ResourceBindingsApi.new
id = 'id_example' # String | The short or long ID of the binding.
resource_binding_patch = IbmCloudResourceController::ResourceBindingPatch.new # ResourceBindingPatch | 

begin
  #Update a resource binding
  result = api_instance.update_resource_binding(id, resource_binding_patch)
  p result
rescue IbmCloudResourceController::ApiError => e
  puts "Exception when calling ResourceBindingsApi->update_resource_binding: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The short or long ID of the binding. | 
 **resource_binding_patch** | [**ResourceBindingPatch**](ResourceBindingPatch.md)|  | 

### Return type

[**ResourceBinding**](ResourceBinding.md)

### Authorization

[IAM](../README.md#IAM)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

