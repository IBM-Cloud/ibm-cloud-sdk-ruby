# IbmCloudResourceController::ResourceAliasesApi

All URIs are relative to *https://resource-controller.cloud.ibm.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_resource_alias**](ResourceAliasesApi.md#create_resource_alias) | **POST** /v2/resource_aliases | Create a new resource alias
[**delete_resource_alias**](ResourceAliasesApi.md#delete_resource_alias) | **DELETE** /v2/resource_aliases/{id} | Delete a resource alias
[**get_resource_alias**](ResourceAliasesApi.md#get_resource_alias) | **GET** /v2/resource_aliases/{id} | Get a resource alias
[**list_resource_aliases**](ResourceAliasesApi.md#list_resource_aliases) | **GET** /v2/resource_aliases | Get a list of all resource aliases
[**update_resource_alias**](ResourceAliasesApi.md#update_resource_alias) | **PATCH** /v2/resource_aliases/{id} | Update a resource alias



## create_resource_alias

> ResourceAlias create_resource_alias(resource_alias_post)

Create a new resource alias

Alias a resource instance into a targeted environment's (name)space.

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

api_instance = IbmCloudResourceController::ResourceAliasesApi.new
resource_alias_post = IbmCloudResourceController::ResourceAliasPost.new # ResourceAliasPost | 

begin
  #Create a new resource alias
  result = api_instance.create_resource_alias(resource_alias_post)
  p result
rescue IbmCloudResourceController::ApiError => e
  puts "Exception when calling ResourceAliasesApi->create_resource_alias: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resource_alias_post** | [**ResourceAliasPost**](ResourceAliasPost.md)|  | 

### Return type

[**ResourceAlias**](ResourceAlias.md)

### Authorization

[IAM](../README.md#IAM)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_resource_alias

> delete_resource_alias(id)

Delete a resource alias

Delete a resource alias by ID.

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

api_instance = IbmCloudResourceController::ResourceAliasesApi.new
id = 'id_example' # String | The short or long ID of the alias.

begin
  #Delete a resource alias
  api_instance.delete_resource_alias(id)
rescue IbmCloudResourceController::ApiError => e
  puts "Exception when calling ResourceAliasesApi->delete_resource_alias: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The short or long ID of the alias. | 

### Return type

nil (empty response body)

### Authorization

[IAM](../README.md#IAM)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_resource_alias

> ResourceAlias get_resource_alias(id)

Get a resource alias

Retrieve a resource alias by ID.

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

api_instance = IbmCloudResourceController::ResourceAliasesApi.new
id = 'id_example' # String | The short or long ID of the alias.

begin
  #Get a resource alias
  result = api_instance.get_resource_alias(id)
  p result
rescue IbmCloudResourceController::ApiError => e
  puts "Exception when calling ResourceAliasesApi->get_resource_alias: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The short or long ID of the alias. | 

### Return type

[**ResourceAlias**](ResourceAlias.md)

### Authorization

[IAM](../README.md#IAM)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_resource_aliases

> ResourceAliasesList list_resource_aliases(opts)

Get a list of all resource aliases

Get a list of all resource aliases.

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

api_instance = IbmCloudResourceController::ResourceAliasesApi.new
opts = {
  guid: 'guid_example', # String | Short ID of the alias.
  name: 'name_example', # String | The human-readable name of the alias.
  resource_instance_id: 'resource_instance_id_example', # String | Resource instance short ID.
  region_instance_id: 'region_instance_id_example', # String | Short ID of the instance in a specific targeted environment. For example, `service_instance_id` in a given IBM Cloud environment.
  resource_id: 'resource_id_example', # String | The unique ID of the offering (service name). This value is provided by and stored in the global catalog.
  resource_group_id: 'resource_group_id_example', # String | Short ID of Resource group.
  limit: 'limit_example', # String | Limit on how many items should be returned.
  updated_from: '2019-01-08T00:00:00.000Z', # String | Start date inclusive filter.
  updated_to: '2019-01-08T00:00:00.000Z' # String | End date inclusive filter.
}

begin
  #Get a list of all resource aliases
  result = api_instance.list_resource_aliases(opts)
  p result
rescue IbmCloudResourceController::ApiError => e
  puts "Exception when calling ResourceAliasesApi->list_resource_aliases: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **guid** | **String**| Short ID of the alias. | [optional] 
 **name** | **String**| The human-readable name of the alias. | [optional] 
 **resource_instance_id** | **String**| Resource instance short ID. | [optional] 
 **region_instance_id** | **String**| Short ID of the instance in a specific targeted environment. For example, &#x60;service_instance_id&#x60; in a given IBM Cloud environment. | [optional] 
 **resource_id** | **String**| The unique ID of the offering (service name). This value is provided by and stored in the global catalog. | [optional] 
 **resource_group_id** | **String**| Short ID of Resource group. | [optional] 
 **limit** | **String**| Limit on how many items should be returned. | [optional] 
 **updated_from** | **String**| Start date inclusive filter. | [optional] 
 **updated_to** | **String**| End date inclusive filter. | [optional] 

### Return type

[**ResourceAliasesList**](ResourceAliasesList.md)

### Authorization

[IAM](../README.md#IAM)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_resource_alias

> ResourceAlias update_resource_alias(id, resource_alias_patch)

Update a resource alias

Update a resource alias by ID.

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

api_instance = IbmCloudResourceController::ResourceAliasesApi.new
id = 'id_example' # String | The short or long ID of the alias.
resource_alias_patch = IbmCloudResourceController::ResourceAliasPatch.new # ResourceAliasPatch | 

begin
  #Update a resource alias
  result = api_instance.update_resource_alias(id, resource_alias_patch)
  p result
rescue IbmCloudResourceController::ApiError => e
  puts "Exception when calling ResourceAliasesApi->update_resource_alias: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The short or long ID of the alias. | 
 **resource_alias_patch** | [**ResourceAliasPatch**](ResourceAliasPatch.md)|  | 

### Return type

[**ResourceAlias**](ResourceAlias.md)

### Authorization

[IAM](../README.md#IAM)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

