# IbmCloudResourceController::ResourceKeysApi

All URIs are relative to *https://resource-controller.cloud.ibm.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_resource_key**](ResourceKeysApi.md#create_resource_key) | **POST** /v2/resource_keys | Create a new resource key |
| [**delete_resource_key**](ResourceKeysApi.md#delete_resource_key) | **DELETE** /v2/resource_keys/{id} | Delete a resource key |
| [**get_resource_key**](ResourceKeysApi.md#get_resource_key) | **GET** /v2/resource_keys/{id} | Get resource key |
| [**list_resource_keys**](ResourceKeysApi.md#list_resource_keys) | **GET** /v2/resource_keys | Get a list of all of the resource keys |
| [**update_resource_key**](ResourceKeysApi.md#update_resource_key) | **PATCH** /v2/resource_keys/{id} | Update a resource key |


## create_resource_key

> <ResourceKey> create_resource_key(resource_key_post)

Create a new resource key

A resource key is a saved credential you can use to authenticate with a resource instance.

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

api_instance = IbmCloudResourceController::ResourceKeysApi.new
resource_key_post = IbmCloudResourceController::ResourceKeyPost.new({name: 'my-key', source: '25eba2a9-beef-450b-82cf-f5ad5e36c6dd'}) # ResourceKeyPost | 

begin
  # Create a new resource key
  result = api_instance.create_resource_key(resource_key_post)
  p result
rescue IbmCloudResourceController::ApiError => e
  puts "Error when calling ResourceKeysApi->create_resource_key: #{e}"
end
```

#### Using the create_resource_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceKey>, Integer, Hash)> create_resource_key_with_http_info(resource_key_post)

```ruby
begin
  # Create a new resource key
  data, status_code, headers = api_instance.create_resource_key_with_http_info(resource_key_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceKey>
rescue IbmCloudResourceController::ApiError => e
  puts "Error when calling ResourceKeysApi->create_resource_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource_key_post** | [**ResourceKeyPost**](ResourceKeyPost.md) |  |  |

### Return type

[**ResourceKey**](ResourceKey.md)

### Authorization

[IAM](../README.md#IAM)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_resource_key

> delete_resource_key(id)

Delete a resource key

Deleting a resource key does not affect any resource instance associated with the key.

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

api_instance = IbmCloudResourceController::ResourceKeysApi.new
id = 'id_example' # String | The resource key URL-encoded CRN or GUID.

begin
  # Delete a resource key
  api_instance.delete_resource_key(id)
rescue IbmCloudResourceController::ApiError => e
  puts "Error when calling ResourceKeysApi->delete_resource_key: #{e}"
end
```

#### Using the delete_resource_key_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_resource_key_with_http_info(id)

```ruby
begin
  # Delete a resource key
  data, status_code, headers = api_instance.delete_resource_key_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue IbmCloudResourceController::ApiError => e
  puts "Error when calling ResourceKeysApi->delete_resource_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The resource key URL-encoded CRN or GUID. |  |

### Return type

nil (empty response body)

### Authorization

[IAM](../README.md#IAM)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_resource_key

> <ResourceKey> get_resource_key(id)

Get resource key

View the details of a resource key by URL-encoded CRN or GUID, like the credentials for the key and who created it.

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

api_instance = IbmCloudResourceController::ResourceKeysApi.new
id = 'id_example' # String | The resource key URL-encoded CRN or GUID.

begin
  # Get resource key
  result = api_instance.get_resource_key(id)
  p result
rescue IbmCloudResourceController::ApiError => e
  puts "Error when calling ResourceKeysApi->get_resource_key: #{e}"
end
```

#### Using the get_resource_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceKey>, Integer, Hash)> get_resource_key_with_http_info(id)

```ruby
begin
  # Get resource key
  data, status_code, headers = api_instance.get_resource_key_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceKey>
rescue IbmCloudResourceController::ApiError => e
  puts "Error when calling ResourceKeysApi->get_resource_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The resource key URL-encoded CRN or GUID. |  |

### Return type

[**ResourceKey**](ResourceKey.md)

### Authorization

[IAM](../README.md#IAM)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_resource_keys

> <ResourceKeysList> list_resource_keys(opts)

Get a list of all of the resource keys

View all of the resource keys that exist for all of your resource instances.

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

api_instance = IbmCloudResourceController::ResourceKeysApi.new
opts = {
  guid: 'guid_example', # String | The GUID of the key.
  name: 'name_example', # String | The human-readable name of the key.
  resource_group_id: 'resource_group_id_example', # String | The ID of the resource group.
  resource_id: 'resource_id_example', # String | The unique ID of the offering. This value is provided by and stored in the global catalog.
  limit: 56, # Integer | Limit on how many items should be returned. The number of items returned may be less than the specified limit if the caller lacks sufficient access to retrieve certain resource keys.
  start: 'start_example', # String | An optional token that indicates the beginning of the page of results to be returned. Any additional query parameters are ignored if a page token is present. If omitted, the first page of results is returned. This value is obtained from the 'start' query parameter in the 'next_url' field of the operation response.
  updated_from: '2021-01-01', # String | Start date inclusive filter.
  updated_to: '2021-01-01', # String | End date inclusive filter.
  sort: 'name', # String | Optional sort property, valid values are `name`, `created_at` and `updated_at`. If specified, the items are sorted by the value of this property.
  order: 'asc' # String | Optional sort order, valid values are `asc` and `desc`.
}

begin
  # Get a list of all of the resource keys
  result = api_instance.list_resource_keys(opts)
  p result
rescue IbmCloudResourceController::ApiError => e
  puts "Error when calling ResourceKeysApi->list_resource_keys: #{e}"
end
```

#### Using the list_resource_keys_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceKeysList>, Integer, Hash)> list_resource_keys_with_http_info(opts)

```ruby
begin
  # Get a list of all of the resource keys
  data, status_code, headers = api_instance.list_resource_keys_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceKeysList>
rescue IbmCloudResourceController::ApiError => e
  puts "Error when calling ResourceKeysApi->list_resource_keys_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guid** | **String** | The GUID of the key. | [optional] |
| **name** | **String** | The human-readable name of the key. | [optional] |
| **resource_group_id** | **String** | The ID of the resource group. | [optional] |
| **resource_id** | **String** | The unique ID of the offering. This value is provided by and stored in the global catalog. | [optional] |
| **limit** | **Integer** | Limit on how many items should be returned. The number of items returned may be less than the specified limit if the caller lacks sufficient access to retrieve certain resource keys. | [optional][default to 100] |
| **start** | **String** | An optional token that indicates the beginning of the page of results to be returned. Any additional query parameters are ignored if a page token is present. If omitted, the first page of results is returned. This value is obtained from the &#39;start&#39; query parameter in the &#39;next_url&#39; field of the operation response. | [optional] |
| **updated_from** | **String** | Start date inclusive filter. | [optional] |
| **updated_to** | **String** | End date inclusive filter. | [optional] |
| **sort** | **String** | Optional sort property, valid values are &#x60;name&#x60;, &#x60;created_at&#x60; and &#x60;updated_at&#x60;. If specified, the items are sorted by the value of this property. | [optional][default to &#39;name&#39;] |
| **order** | **String** | Optional sort order, valid values are &#x60;asc&#x60; and &#x60;desc&#x60;. | [optional][default to &#39;asc&#39;] |

### Return type

[**ResourceKeysList**](ResourceKeysList.md)

### Authorization

[IAM](../README.md#IAM)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_resource_key

> <ResourceKey> update_resource_key(id, resource_key_patch)

Update a resource key

Use the resource key URL-encoded CRN or GUID to update the resource key.

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

api_instance = IbmCloudResourceController::ResourceKeysApi.new
id = 'id_example' # String | The resource key URL-encoded CRN or GUID.
resource_key_patch = IbmCloudResourceController::ResourceKeyPatch.new({name: 'my-new-key-name'}) # ResourceKeyPatch | 

begin
  # Update a resource key
  result = api_instance.update_resource_key(id, resource_key_patch)
  p result
rescue IbmCloudResourceController::ApiError => e
  puts "Error when calling ResourceKeysApi->update_resource_key: #{e}"
end
```

#### Using the update_resource_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceKey>, Integer, Hash)> update_resource_key_with_http_info(id, resource_key_patch)

```ruby
begin
  # Update a resource key
  data, status_code, headers = api_instance.update_resource_key_with_http_info(id, resource_key_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceKey>
rescue IbmCloudResourceController::ApiError => e
  puts "Error when calling ResourceKeysApi->update_resource_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The resource key URL-encoded CRN or GUID. |  |
| **resource_key_patch** | [**ResourceKeyPatch**](ResourceKeyPatch.md) |  |  |

### Return type

[**ResourceKey**](ResourceKey.md)

### Authorization

[IAM](../README.md#IAM)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

