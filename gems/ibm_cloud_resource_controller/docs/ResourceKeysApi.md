# IbmCloudResourceController::ResourceKeysApi

All URIs are relative to *https://resource-controller.cloud.ibm.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_resource_key**](ResourceKeysApi.md#create_resource_key) | **POST** /v2/resource_keys | Create a new resource key
[**delete_resource_key**](ResourceKeysApi.md#delete_resource_key) | **DELETE** /v2/resource_keys/{id} | Delete a resource key by ID
[**get_resource_key**](ResourceKeysApi.md#get_resource_key) | **GET** /v2/resource_keys/{id} | Get resource key by ID
[**list_resource_keys**](ResourceKeysApi.md#list_resource_keys) | **GET** /v2/resource_keys | Get a list of all of the resource keys.
[**update_resource_key**](ResourceKeysApi.md#update_resource_key) | **PATCH** /v2/resource_keys/{id} | Update a resource key



## create_resource_key

> ResourceKey create_resource_key(resource_key_post)

Create a new resource key

Create a new resource key.

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

api_instance = IbmCloudResourceController::ResourceKeysApi.new
resource_key_post = IbmCloudResourceController::ResourceKeyPost.new # ResourceKeyPost | 

begin
  #Create a new resource key
  result = api_instance.create_resource_key(resource_key_post)
  p result
rescue IbmCloudResourceController::ApiError => e
  puts "Exception when calling ResourceKeysApi->create_resource_key: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resource_key_post** | [**ResourceKeyPost**](ResourceKeyPost.md)|  | 

### Return type

[**ResourceKey**](ResourceKey.md)

### Authorization

[IAM](../README.md#IAM)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_resource_key

> delete_resource_key(id)

Delete a resource key by ID

Delete a resource key by ID.

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

api_instance = IbmCloudResourceController::ResourceKeysApi.new
id = 'id_example' # String | The short or long ID of the key.

begin
  #Delete a resource key by ID
  api_instance.delete_resource_key(id)
rescue IbmCloudResourceController::ApiError => e
  puts "Exception when calling ResourceKeysApi->delete_resource_key: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The short or long ID of the key. | 

### Return type

nil (empty response body)

### Authorization

[IAM](../README.md#IAM)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_resource_key

> ResourceKey get_resource_key(id)

Get resource key by ID

Get resource key by ID.

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

api_instance = IbmCloudResourceController::ResourceKeysApi.new
id = 'id_example' # String | The short or long ID of the key.

begin
  #Get resource key by ID
  result = api_instance.get_resource_key(id)
  p result
rescue IbmCloudResourceController::ApiError => e
  puts "Exception when calling ResourceKeysApi->get_resource_key: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The short or long ID of the key. | 

### Return type

[**ResourceKey**](ResourceKey.md)

### Authorization

[IAM](../README.md#IAM)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_resource_keys

> ResourceKeysList list_resource_keys(opts)

Get a list of all of the resource keys.

List all resource keys.

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

api_instance = IbmCloudResourceController::ResourceKeysApi.new
opts = {
  guid: 'guid_example', # String | When you create a new key, a GUID (globally unique identifier) is assigned. This is a unique internal GUID managed by Resource controller that corresponds to the key.
  name: 'name_example', # String | The human-readable name of the key.
  resource_group_id: 'resource_group_id_example', # String | The short ID of the resource group.
  resource_id: 'resource_id_example', # String | The unique ID of the offering. This value is provided by and stored in the global catalog.
  limit: 'limit_example', # String | Limit on how many items should be returned.
  updated_from: '2019-01-08T00:00:00.000Z', # String | Start date inclusive filter.
  updated_to: '2019-01-08T00:00:00.000Z' # String | End date inclusive filter.
}

begin
  #Get a list of all of the resource keys.
  result = api_instance.list_resource_keys(opts)
  p result
rescue IbmCloudResourceController::ApiError => e
  puts "Exception when calling ResourceKeysApi->list_resource_keys: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **guid** | **String**| When you create a new key, a GUID (globally unique identifier) is assigned. This is a unique internal GUID managed by Resource controller that corresponds to the key. | [optional] 
 **name** | **String**| The human-readable name of the key. | [optional] 
 **resource_group_id** | **String**| The short ID of the resource group. | [optional] 
 **resource_id** | **String**| The unique ID of the offering. This value is provided by and stored in the global catalog. | [optional] 
 **limit** | **String**| Limit on how many items should be returned. | [optional] 
 **updated_from** | **String**| Start date inclusive filter. | [optional] 
 **updated_to** | **String**| End date inclusive filter. | [optional] 

### Return type

[**ResourceKeysList**](ResourceKeysList.md)

### Authorization

[IAM](../README.md#IAM)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_resource_key

> ResourceKey update_resource_key(id, resource_key_patch)

Update a resource key

Update a resource key by ID.

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

api_instance = IbmCloudResourceController::ResourceKeysApi.new
id = 'id_example' # String | The short or long ID of the key.
resource_key_patch = IbmCloudResourceController::ResourceKeyPatch.new # ResourceKeyPatch | 

begin
  #Update a resource key
  result = api_instance.update_resource_key(id, resource_key_patch)
  p result
rescue IbmCloudResourceController::ApiError => e
  puts "Exception when calling ResourceKeysApi->update_resource_key: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The short or long ID of the key. | 
 **resource_key_patch** | [**ResourceKeyPatch**](ResourceKeyPatch.md)|  | 

### Return type

[**ResourceKey**](ResourceKey.md)

### Authorization

[IAM](../README.md#IAM)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

