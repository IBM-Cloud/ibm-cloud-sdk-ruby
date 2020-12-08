# IbmCloudVpc::PublicGatewaysApi

All URIs are relative to *https://us-south.iaas.cloud.ibm.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_public_gateway**](PublicGatewaysApi.md#create_public_gateway) | **POST** /public_gateways | Create a public gateway
[**delete_public_gateway**](PublicGatewaysApi.md#delete_public_gateway) | **DELETE** /public_gateways/{id} | Delete specified public gateway
[**get_public_gateway**](PublicGatewaysApi.md#get_public_gateway) | **GET** /public_gateways/{id} | Retrieve specified public gateway
[**list_public_gateways**](PublicGatewaysApi.md#list_public_gateways) | **GET** /public_gateways | List all public gateways
[**update_public_gateway**](PublicGatewaysApi.md#update_public_gateway) | **PATCH** /public_gateways/{id} | Update a public gateway&#39;s name



## create_public_gateway

> PublicGateway create_public_gateway(version, generation, public_gateway_prototype)

Create a public gateway

This request creates a new public gateway from a public gateway prototype object. For this to succeed, the VPC must not already have a public gateway in the specified zone.  If a floating IP is provided, it must be unbound. If a floating IP is not provided, one will be created and bound to the public gateway. Once a public gateway has been created, its floating IP cannot be unbound. A public gateway must be explicitly attached to each subnet it will provide connectivity for.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::PublicGatewaysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
public_gateway_prototype = IbmCloudVpc::PublicGatewayPrototype.new # PublicGatewayPrototype | The public gateway prototype object

begin
  #Create a public gateway
  result = api_instance.create_public_gateway(version, generation, public_gateway_prototype)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling PublicGatewaysApi->create_public_gateway: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **public_gateway_prototype** | [**PublicGatewayPrototype**](PublicGatewayPrototype.md)| The public gateway prototype object | 

### Return type

[**PublicGateway**](PublicGateway.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_public_gateway

> delete_public_gateway(version, generation, id)

Delete specified public gateway

This request deletes a public gateway. This operation cannot be reversed. For this request to succeed, the public gateway must not be attached to any subnets. The public gateway's floating IP will be automatically unbound. If the floating IP was created when the public gateway was created, it will be deleted.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::PublicGatewaysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The public gateway identifier

begin
  #Delete specified public gateway
  api_instance.delete_public_gateway(version, generation, id)
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling PublicGatewaysApi->delete_public_gateway: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The public gateway identifier | 

### Return type

nil (empty response body)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_public_gateway

> PublicGateway get_public_gateway(version, generation, id)

Retrieve specified public gateway

This request retrieves a single public gateway specified by the identifier in the URL.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::PublicGatewaysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The public gateway identifier

begin
  #Retrieve specified public gateway
  result = api_instance.get_public_gateway(version, generation, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling PublicGatewaysApi->get_public_gateway: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The public gateway identifier | 

### Return type

[**PublicGateway**](PublicGateway.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_public_gateways

> PublicGatewayCollection list_public_gateways(version, generation, opts)

List all public gateways

This request lists all public gateways. A public gateway is a virtual network device associated with a VPC, which allows access to the Internet. A public gateway resides in a zone and can be connected to subnets in the same zone only.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::PublicGatewaysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
opts = {
  start: 'start_example', # String | A server-supplied token determining what resource to start the page on
  limit: 50, # Integer | The number of resources to return on a page
  resource_group_id: 'resource_group_id_example' # String | Filters the collection to resources within one of the resource groups identified in a comma-separated list of resource group identifiers
}

begin
  #List all public gateways
  result = api_instance.list_public_gateways(version, generation, opts)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling PublicGatewaysApi->list_public_gateways: #{e}"
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

[**PublicGatewayCollection**](PublicGatewayCollection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_public_gateway

> PublicGateway update_public_gateway(version, generation, id, public_gateway_patch)

Update a public gateway's name

This request updates a public gateway's name.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::PublicGatewaysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The public gateway identifier
public_gateway_patch = IbmCloudVpc::PublicGatewayPatch.new # PublicGatewayPatch | The public gateway patch

begin
  #Update a public gateway's name
  result = api_instance.update_public_gateway(version, generation, id, public_gateway_patch)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling PublicGatewaysApi->update_public_gateway: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The public gateway identifier | 
 **public_gateway_patch** | [**PublicGatewayPatch**](PublicGatewayPatch.md)| The public gateway patch | 

### Return type

[**PublicGateway**](PublicGateway.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/merge-patch+json
- **Accept**: application/json

