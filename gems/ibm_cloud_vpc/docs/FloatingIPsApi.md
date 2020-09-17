# IbmCloudVpc::FloatingIPsApi

All URIs are relative to *https://us-south.iaas.cloud.ibm.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_floating_ip**](FloatingIPsApi.md#create_floating_ip) | **POST** /floating_ips | Reserve a floating IP
[**delete_floating_ip**](FloatingIPsApi.md#delete_floating_ip) | **DELETE** /floating_ips/{id} | Release the specified floating IP
[**get_floating_ip**](FloatingIPsApi.md#get_floating_ip) | **GET** /floating_ips/{id} | Retrieve the specified floating IP
[**list_floating_ips**](FloatingIPsApi.md#list_floating_ips) | **GET** /floating_ips | List all floating IPs
[**update_floating_ip**](FloatingIPsApi.md#update_floating_ip) | **PATCH** /floating_ips/{id} | Update the specified floating IP



## create_floating_ip

> FloatingIP create_floating_ip(version, generation, unknown_base_type)

Reserve a floating IP

This request reserves a new floating IP.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::FloatingIPsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
unknown_base_type = IbmCloudVpc::UNKNOWN_BASE_TYPE.new # UNKNOWN_BASE_TYPE | The floating IP prototype object

begin
  #Reserve a floating IP
  result = api_instance.create_floating_ip(version, generation, unknown_base_type)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling FloatingIPsApi->create_floating_ip: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **unknown_base_type** | [**UNKNOWN_BASE_TYPE**](UNKNOWN_BASE_TYPE.md)| The floating IP prototype object | 

### Return type

[**FloatingIP**](FloatingIP.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_floating_ip

> delete_floating_ip(version, generation, id)

Release the specified floating IP

This request disassociates (if associated) and releases a floating IP. This operation cannot be reversed. For this request to succeed, the floating IP must not be required by another resource, such as a public gateway.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::FloatingIPsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The floating IP identifier

begin
  #Release the specified floating IP
  api_instance.delete_floating_ip(version, generation, id)
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling FloatingIPsApi->delete_floating_ip: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The floating IP identifier | 

### Return type

nil (empty response body)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_floating_ip

> FloatingIP get_floating_ip(version, generation, id)

Retrieve the specified floating IP

This request retrieves a single floating IP specified by the identifier in the URL.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::FloatingIPsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The floating IP identifier

begin
  #Retrieve the specified floating IP
  result = api_instance.get_floating_ip(version, generation, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling FloatingIPsApi->get_floating_ip: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The floating IP identifier | 

### Return type

[**FloatingIP**](FloatingIP.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_floating_ips

> FloatingIPCollection list_floating_ips(version, generation, opts)

List all floating IPs

This request retrieves all floating IPs in the region. Floating IPs allow inbound and outbound traffic from the Internet to an instance.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::FloatingIPsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
opts = {
  start: 'start_example', # String | A server-supplied token determining what resource to start the page on
  limit: 50, # Integer | The number of resources to return on a page
  resource_group_id: 'resource_group_id_example' # String | Filters the collection to resources within one of the resource groups identified in a comma-separated list of resource group identifiers
}

begin
  #List all floating IPs
  result = api_instance.list_floating_ips(version, generation, opts)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling FloatingIPsApi->list_floating_ips: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **start** | **String**| A server-supplied token determining what resource to start the page on | [optional] 
 **limit** | **Integer**| The number of resources to return on a page | [optional] [default to 50]
 **resource_group_id** | **String**| Filters the collection to resources within one of the resource groups identified in a comma-separated list of resource group identifiers | [optional] 

### Return type

[**FloatingIPCollection**](FloatingIPCollection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_floating_ip

> FloatingIP update_floating_ip(version, generation, id, floating_ip_patch)

Update the specified floating IP

This request updates a floating IP's name and/or target.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::FloatingIPsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The floating IP identifier
floating_ip_patch = IbmCloudVpc::FloatingIPPatch.new # FloatingIPPatch | The floating IP patch

begin
  #Update the specified floating IP
  result = api_instance.update_floating_ip(version, generation, id, floating_ip_patch)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling FloatingIPsApi->update_floating_ip: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The floating IP identifier | 
 **floating_ip_patch** | [**FloatingIPPatch**](FloatingIPPatch.md)| The floating IP patch | 

### Return type

[**FloatingIP**](FloatingIP.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

