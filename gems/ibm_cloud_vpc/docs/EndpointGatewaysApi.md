# IbmCloudVpc::EndpointGatewaysApi

All URIs are relative to *https://us-south.iaas.cloud.ibm.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_endpoint_gateway_ip**](EndpointGatewaysApi.md#add_endpoint_gateway_ip) | **PUT** /endpoint_gateways/{endpoint_gateway_id}/ips/{id} | Bind a reserved IP to an endpoint gateway
[**create_endpoint_gateway**](EndpointGatewaysApi.md#create_endpoint_gateway) | **POST** /endpoint_gateways | Create an endpoint gateway
[**delete_endpoint_gateway**](EndpointGatewaysApi.md#delete_endpoint_gateway) | **DELETE** /endpoint_gateways/{id} | Delete an endpoint gateway
[**get_endpoint_gateway**](EndpointGatewaysApi.md#get_endpoint_gateway) | **GET** /endpoint_gateways/{id} | Retrieve an endpoint gateway
[**get_endpoint_gateway_ip**](EndpointGatewaysApi.md#get_endpoint_gateway_ip) | **GET** /endpoint_gateways/{endpoint_gateway_id}/ips/{id} | Retrieve a reserved IP bound to an endpoint gateway
[**list_endpoint_gateway_ips**](EndpointGatewaysApi.md#list_endpoint_gateway_ips) | **GET** /endpoint_gateways/{endpoint_gateway_id}/ips | List all reserved IPs bound to an endpoint gateway
[**list_endpoint_gateways**](EndpointGatewaysApi.md#list_endpoint_gateways) | **GET** /endpoint_gateways | List all endpoint gateways
[**remove_endpoint_gateway_ip**](EndpointGatewaysApi.md#remove_endpoint_gateway_ip) | **DELETE** /endpoint_gateways/{endpoint_gateway_id}/ips/{id} | Unbind a reserved IP from an endpoint gateway
[**update_endpoint_gateway**](EndpointGatewaysApi.md#update_endpoint_gateway) | **PATCH** /endpoint_gateways/{id} | Update an endpoint gateway



## add_endpoint_gateway_ip

> ReservedIP add_endpoint_gateway_ip(version, generation, endpoint_gateway_id, id)

Bind a reserved IP to an endpoint gateway

This request binds the specified reserved IP to the specified endpoint gateway. For this request to succeed, the reserved IP must currently be unbound and must not have a floating IP bound to it.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::EndpointGatewaysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
endpoint_gateway_id = 'endpoint_gateway_id_example' # String | The endpoint gateway identifier
id = 'id_example' # String | The reserved IP identifier

begin
  #Bind a reserved IP to an endpoint gateway
  result = api_instance.add_endpoint_gateway_ip(version, generation, endpoint_gateway_id, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling EndpointGatewaysApi->add_endpoint_gateway_ip: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **endpoint_gateway_id** | **String**| The endpoint gateway identifier | 
 **id** | **String**| The reserved IP identifier | 

### Return type

[**ReservedIP**](ReservedIP.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_endpoint_gateway

> EndpointGateway create_endpoint_gateway(version, generation, endpoint_gateway_prototype)

Create an endpoint gateway

This request creates a new endpoint gateway. An endpoint gateway maps one or more reserved IPs in a VPC to a target outside the VPC.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::EndpointGatewaysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
endpoint_gateway_prototype = {"target":{"name":"ibm-ntp-server","resource_type":"provider_infrastructure_service"},"vpc":{"id":"f025b503-ae66-46de-a011-3bd08fd5f7bf"}} # EndpointGatewayPrototype | The endpoint gateway prototype

begin
  #Create an endpoint gateway
  result = api_instance.create_endpoint_gateway(version, generation, endpoint_gateway_prototype)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling EndpointGatewaysApi->create_endpoint_gateway: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **endpoint_gateway_prototype** | [**EndpointGatewayPrototype**](EndpointGatewayPrototype.md)| The endpoint gateway prototype | 

### Return type

[**EndpointGateway**](EndpointGateway.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_endpoint_gateway

> delete_endpoint_gateway(version, generation, id)

Delete an endpoint gateway

This request deletes an endpoint gateway. This operation cannot be reversed.  Reserved IPs that were bound to the endpoint gateway will be released if their `auto_delete` property is set to true.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::EndpointGatewaysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The endpoint gateway identifier

begin
  #Delete an endpoint gateway
  api_instance.delete_endpoint_gateway(version, generation, id)
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling EndpointGatewaysApi->delete_endpoint_gateway: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The endpoint gateway identifier | 

### Return type

nil (empty response body)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_endpoint_gateway

> EndpointGateway get_endpoint_gateway(version, generation, id)

Retrieve an endpoint gateway

This request retrieves a single endpoint gateway specified by the identifier in the URL.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::EndpointGatewaysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The endpoint gateway identifier

begin
  #Retrieve an endpoint gateway
  result = api_instance.get_endpoint_gateway(version, generation, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling EndpointGatewaysApi->get_endpoint_gateway: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The endpoint gateway identifier | 

### Return type

[**EndpointGateway**](EndpointGateway.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_endpoint_gateway_ip

> ReservedIP get_endpoint_gateway_ip(version, generation, endpoint_gateway_id, id)

Retrieve a reserved IP bound to an endpoint gateway

This request a retrieves the specified reserved IP address if it is bound to the endpoint gateway specified in the URL.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::EndpointGatewaysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
endpoint_gateway_id = 'endpoint_gateway_id_example' # String | The endpoint gateway identifier
id = 'id_example' # String | The reserved IP identifier

begin
  #Retrieve a reserved IP bound to an endpoint gateway
  result = api_instance.get_endpoint_gateway_ip(version, generation, endpoint_gateway_id, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling EndpointGatewaysApi->get_endpoint_gateway_ip: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **endpoint_gateway_id** | **String**| The endpoint gateway identifier | 
 **id** | **String**| The reserved IP identifier | 

### Return type

[**ReservedIP**](ReservedIP.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_endpoint_gateway_ips

> ReservedIPCollectionEndpointGatewayContext list_endpoint_gateway_ips(version, generation, endpoint_gateway_id, opts)

List all reserved IPs bound to an endpoint gateway

This request retrieves all reserved IPs bound to an endpoint gateway.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::EndpointGatewaysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
endpoint_gateway_id = 'endpoint_gateway_id_example' # String | The endpoint gateway identifier
opts = {
  start: 'start_example', # String | A server-supplied token determining what resource to start the page on
  limit: 50, # Integer | The number of resources to return on a page
  sort: 'address' # String | Sorts the returned collection by the specified field name in ascending order. A `-` may be prepended to the field name to sort in descending order. For example, the value `-created_at` sorts the collection by the `created_at` field in descending order, and the value `name` sorts it by the `name` field in ascending order.
}

begin
  #List all reserved IPs bound to an endpoint gateway
  result = api_instance.list_endpoint_gateway_ips(version, generation, endpoint_gateway_id, opts)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling EndpointGatewaysApi->list_endpoint_gateway_ips: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **endpoint_gateway_id** | **String**| The endpoint gateway identifier | 
 **start** | **String**| A server-supplied token determining what resource to start the page on | [optional] 
 **limit** | **Integer**| The number of resources to return on a page | [optional] [default to 50]
 **sort** | **String**| Sorts the returned collection by the specified field name in ascending order. A &#x60;-&#x60; may be prepended to the field name to sort in descending order. For example, the value &#x60;-created_at&#x60; sorts the collection by the &#x60;created_at&#x60; field in descending order, and the value &#x60;name&#x60; sorts it by the &#x60;name&#x60; field in ascending order. | [optional] [default to &#39;address&#39;]

### Return type

[**ReservedIPCollectionEndpointGatewayContext**](ReservedIPCollectionEndpointGatewayContext.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_endpoint_gateways

> EndpointGatewayCollection list_endpoint_gateways(version, generation, opts)

List all endpoint gateways

This request lists all endpoint gateways. An endpoint gateway maps one or more reserved IPs in a VPC to a target outside the VPC.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::EndpointGatewaysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
opts = {
  name: 'name_example', # String | Filters the collection to resources with the exact specified name
  start: 'start_example', # String | A server-supplied token determining what resource to start the page on
  limit: 50, # Integer | The number of resources to return on a page
  resource_group_id: 'resource_group_id_example' # String | Filters the collection to resources within one of the resource groups identified in a comma-separated list of resource group identifiers
}

begin
  #List all endpoint gateways
  result = api_instance.list_endpoint_gateways(version, generation, opts)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling EndpointGatewaysApi->list_endpoint_gateways: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **name** | **String**| Filters the collection to resources with the exact specified name | [optional] 
 **start** | **String**| A server-supplied token determining what resource to start the page on | [optional] 
 **limit** | **Integer**| The number of resources to return on a page | [optional] [default to 50]
 **resource_group_id** | **String**| Filters the collection to resources within one of the resource groups identified in a comma-separated list of resource group identifiers | [optional] 

### Return type

[**EndpointGatewayCollection**](EndpointGatewayCollection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_endpoint_gateway_ip

> remove_endpoint_gateway_ip(version, generation, endpoint_gateway_id, id)

Unbind a reserved IP from an endpoint gateway

This request unbinds the specified reserved IP from the specified endpoint gateway. If the reserved IP has `auto_delete` set to `true`, the reserved IP will be deleted.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::EndpointGatewaysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
endpoint_gateway_id = 'endpoint_gateway_id_example' # String | The endpoint gateway identifier
id = 'id_example' # String | The reserved IP identifier

begin
  #Unbind a reserved IP from an endpoint gateway
  api_instance.remove_endpoint_gateway_ip(version, generation, endpoint_gateway_id, id)
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling EndpointGatewaysApi->remove_endpoint_gateway_ip: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **endpoint_gateway_id** | **String**| The endpoint gateway identifier | 
 **id** | **String**| The reserved IP identifier | 

### Return type

nil (empty response body)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_endpoint_gateway

> EndpointGateway update_endpoint_gateway(version, generation, id, endpoint_gateway_patch)

Update an endpoint gateway

This request updates an endpoint gateway's name.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::EndpointGatewaysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The endpoint gateway identifier
endpoint_gateway_patch = IbmCloudVpc::EndpointGatewayPatch.new # EndpointGatewayPatch | The endpoint gateway patch

begin
  #Update an endpoint gateway
  result = api_instance.update_endpoint_gateway(version, generation, id, endpoint_gateway_patch)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling EndpointGatewaysApi->update_endpoint_gateway: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The endpoint gateway identifier | 
 **endpoint_gateway_patch** | [**EndpointGatewayPatch**](EndpointGatewayPatch.md)| The endpoint gateway patch | 

### Return type

[**EndpointGateway**](EndpointGateway.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/merge-patch+json
- **Accept**: application/json

