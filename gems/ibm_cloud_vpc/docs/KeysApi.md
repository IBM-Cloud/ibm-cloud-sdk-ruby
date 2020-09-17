# IbmCloudVpc::KeysApi

All URIs are relative to *https://us-south.iaas.cloud.ibm.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_key**](KeysApi.md#create_key) | **POST** /keys | Create a key
[**delete_key**](KeysApi.md#delete_key) | **DELETE** /keys/{id} | Delete specified key
[**get_key**](KeysApi.md#get_key) | **GET** /keys/{id} | Retrieve specified key
[**list_keys**](KeysApi.md#list_keys) | **GET** /keys | List all keys
[**update_key**](KeysApi.md#update_key) | **PATCH** /keys/{id} | Update specified key



## create_key

> Key create_key(version, generation, key_prototype)

Create a key

This request creates a new SSH key from an key prototype object. The prototype object is structured in the same way as a retrieved key, and contains the information necessary to create the new key. The public key value must be provided.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::KeysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
key_prototype = IbmCloudVpc::KeyPrototype.new # KeyPrototype | The key prototype object

begin
  #Create a key
  result = api_instance.create_key(version, generation, key_prototype)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling KeysApi->create_key: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **key_prototype** | [**KeyPrototype**](KeyPrototype.md)| The key prototype object | 

### Return type

[**Key**](Key.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_key

> delete_key(version, generation, id)

Delete specified key

This request deletes a key. This operation cannot be reversed.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::KeysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The key identifier

begin
  #Delete specified key
  api_instance.delete_key(version, generation, id)
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling KeysApi->delete_key: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The key identifier | 

### Return type

nil (empty response body)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_key

> Key get_key(version, generation, id)

Retrieve specified key

This request retrieves a single key specified by the identifier in the URL.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::KeysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The key identifier

begin
  #Retrieve specified key
  result = api_instance.get_key(version, generation, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling KeysApi->get_key: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The key identifier | 

### Return type

[**Key**](Key.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_keys

> KeyCollection list_keys(version, generation, opts)

List all keys

This request lists all keys. A key contains a public SSH key which may be installed on instances when they are created. Private keys are not stored.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::KeysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
opts = {
  resource_group_id: 'resource_group_id_example' # String | Filters the collection to resources within one of the resource groups identified in a comma-separated list of resource group identifiers
}

begin
  #List all keys
  result = api_instance.list_keys(version, generation, opts)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling KeysApi->list_keys: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **resource_group_id** | **String**| Filters the collection to resources within one of the resource groups identified in a comma-separated list of resource group identifiers | [optional] 

### Return type

[**KeyCollection**](KeyCollection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_key

> Key update_key(version, generation, id, key_patch)

Update specified key

This request updates a key's name.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::KeysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The key identifier
key_patch = IbmCloudVpc::KeyPatch.new # KeyPatch | The key patch

begin
  #Update specified key
  result = api_instance.update_key(version, generation, id, key_patch)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling KeysApi->update_key: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The key identifier | 
 **key_patch** | [**KeyPatch**](KeyPatch.md)| The key patch | 

### Return type

[**Key**](Key.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

