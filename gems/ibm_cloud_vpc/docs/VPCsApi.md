# IbmCloudVpc::VPCsApi

All URIs are relative to *https://us-south.iaas.cloud.ibm.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_vpc**](VPCsApi.md#create_vpc) | **POST** /vpcs | Create a VPC
[**create_vpc_address_prefix**](VPCsApi.md#create_vpc_address_prefix) | **POST** /vpcs/{vpc_id}/address_prefixes | Create an address pool prefix
[**create_vpc_route**](VPCsApi.md#create_vpc_route) | **POST** /vpcs/{vpc_id}/routes | Create a route in the VPC&#39;s default routing table
[**create_vpc_routing_table**](VPCsApi.md#create_vpc_routing_table) | **POST** /vpcs/{vpc_id}/routing_tables | Create a VPC routing table
[**create_vpc_routing_table_route**](VPCsApi.md#create_vpc_routing_table_route) | **POST** /vpcs/{vpc_id}/routing_tables/{routing_table_id}/routes | Create a VPC route
[**delete_vpc**](VPCsApi.md#delete_vpc) | **DELETE** /vpcs/{id} | Delete specified VPC
[**delete_vpc_address_prefix**](VPCsApi.md#delete_vpc_address_prefix) | **DELETE** /vpcs/{vpc_id}/address_prefixes/{id} | Delete specified address pool prefix
[**delete_vpc_route**](VPCsApi.md#delete_vpc_route) | **DELETE** /vpcs/{vpc_id}/routes/{id} | Delete the specified route in the VPC&#39;s default routing table
[**delete_vpc_routing_table**](VPCsApi.md#delete_vpc_routing_table) | **DELETE** /vpcs/{vpc_id}/routing_tables/{id} | Delete specified VPC routing table
[**delete_vpc_routing_table_route**](VPCsApi.md#delete_vpc_routing_table_route) | **DELETE** /vpcs/{vpc_id}/routing_tables/{routing_table_id}/routes/{id} | Delete the specified VPC route
[**get_vpc**](VPCsApi.md#get_vpc) | **GET** /vpcs/{id} | Retrieve specified VPC
[**get_vpc_address_prefix**](VPCsApi.md#get_vpc_address_prefix) | **GET** /vpcs/{vpc_id}/address_prefixes/{id} | Retrieve specified address pool prefix
[**get_vpc_default_network_acl**](VPCsApi.md#get_vpc_default_network_acl) | **GET** /vpcs/{id}/default_network_acl | Retrieve a VPC&#39;s default network ACL
[**get_vpc_default_routing_table**](VPCsApi.md#get_vpc_default_routing_table) | **GET** /vpcs/{id}/default_routing_table | Retrieve a VPC&#39;s default routing table
[**get_vpc_default_security_group**](VPCsApi.md#get_vpc_default_security_group) | **GET** /vpcs/{id}/default_security_group | Retrieve a VPC&#39;s default security group
[**get_vpc_route**](VPCsApi.md#get_vpc_route) | **GET** /vpcs/{vpc_id}/routes/{id} | Retrieve the specified route in the VPC&#39;s default routing table
[**get_vpc_routing_table**](VPCsApi.md#get_vpc_routing_table) | **GET** /vpcs/{vpc_id}/routing_tables/{id} | Retrieve specified VPC routing table
[**get_vpc_routing_table_route**](VPCsApi.md#get_vpc_routing_table_route) | **GET** /vpcs/{vpc_id}/routing_tables/{routing_table_id}/routes/{id} | Retrieve the specified VPC route
[**list_vpc_address_prefixes**](VPCsApi.md#list_vpc_address_prefixes) | **GET** /vpcs/{vpc_id}/address_prefixes | List all address pool prefixes for a VPC
[**list_vpc_routes**](VPCsApi.md#list_vpc_routes) | **GET** /vpcs/{vpc_id}/routes | List all routes in the VPC&#39;s default routing table.
[**list_vpc_routing_table_routes**](VPCsApi.md#list_vpc_routing_table_routes) | **GET** /vpcs/{vpc_id}/routing_tables/{routing_table_id}/routes | List all the routes of a VPC routing table
[**list_vpc_routing_tables**](VPCsApi.md#list_vpc_routing_tables) | **GET** /vpcs/{vpc_id}/routing_tables | List all routing tables for a VPC
[**list_vpcs**](VPCsApi.md#list_vpcs) | **GET** /vpcs | List all VPCs
[**update_vpc**](VPCsApi.md#update_vpc) | **PATCH** /vpcs/{id} | Update specified VPC
[**update_vpc_address_prefix**](VPCsApi.md#update_vpc_address_prefix) | **PATCH** /vpcs/{vpc_id}/address_prefixes/{id} | Update an address pool prefix
[**update_vpc_route**](VPCsApi.md#update_vpc_route) | **PATCH** /vpcs/{vpc_id}/routes/{id} | Update the specified route in the VPC&#39;s default routing table
[**update_vpc_routing_table**](VPCsApi.md#update_vpc_routing_table) | **PATCH** /vpcs/{vpc_id}/routing_tables/{id} | Update specified VPC routing table
[**update_vpc_routing_table_route**](VPCsApi.md#update_vpc_routing_table_route) | **PATCH** /vpcs/{vpc_id}/routing_tables/{routing_table_id}/routes/{id} | Update the specified VPC route



## create_vpc

> VPC create_vpc(version, generation, opts)

Create a VPC

This request creates a new VPC from a VPC prototype object. The prototype object is structured in the same way as a retrieved VPC, and contains the information necessary to create the new VPC.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPCsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
opts = {
  vpc_prototype: IbmCloudVpc::VPCPrototype.new # VPCPrototype | The VPC prototype object
}

begin
  #Create a VPC
  result = api_instance.create_vpc(version, generation, opts)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPCsApi->create_vpc: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **vpc_prototype** | [**VPCPrototype**](VPCPrototype.md)| The VPC prototype object | [optional] 

### Return type

[**VPC**](VPC.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_vpc_address_prefix

> AddressPrefix create_vpc_address_prefix(version, generation, vpc_id, address_prefix_prototype)

Create an address pool prefix

This request creates a new prefix from a prefix prototype object. The prototype object is structured in the same way as a retrieved prefix, and contains the information necessary to create the new prefix.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPCsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
vpc_id = 'vpc_id_example' # String | The VPC identifier
address_prefix_prototype = IbmCloudVpc::AddressPrefixPrototype.new # AddressPrefixPrototype | The prefix prototype object

begin
  #Create an address pool prefix
  result = api_instance.create_vpc_address_prefix(version, generation, vpc_id, address_prefix_prototype)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPCsApi->create_vpc_address_prefix: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **vpc_id** | **String**| The VPC identifier | 
 **address_prefix_prototype** | [**AddressPrefixPrototype**](AddressPrefixPrototype.md)| The prefix prototype object | 

### Return type

[**AddressPrefix**](AddressPrefix.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_vpc_route

> Route create_vpc_route(version, generation, vpc_id, route_prototype)

Create a route in the VPC's default routing table

This request creates a new route in the VPC's default routing table. The route prototype object is structured in the same way as a retrieved route, and contains the information necessary to create the new route. The request will fail if the new route will cause a loop.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPCsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
vpc_id = 'vpc_id_example' # String | The VPC identifier
route_prototype = IbmCloudVpc::RoutePrototype.new # RoutePrototype | The route prototype object

begin
  #Create a route in the VPC's default routing table
  result = api_instance.create_vpc_route(version, generation, vpc_id, route_prototype)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPCsApi->create_vpc_route: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **vpc_id** | **String**| The VPC identifier | 
 **route_prototype** | [**RoutePrototype**](RoutePrototype.md)| The route prototype object | 

### Return type

[**Route**](Route.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_vpc_routing_table

> RoutingTable create_vpc_routing_table(version, generation, vpc_id, routing_table_prototype)

Create a VPC routing table

This request creates a user-defined routing table from a routing table prototype object. The prototype object is structured in the same way as a retrieved routing table, and contains the information necessary to create the new routing table.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPCsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
vpc_id = 'vpc_id_example' # String | The VPC identifier
routing_table_prototype = IbmCloudVpc::RoutingTablePrototype.new # RoutingTablePrototype | The routing table prototype object

begin
  #Create a VPC routing table
  result = api_instance.create_vpc_routing_table(version, generation, vpc_id, routing_table_prototype)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPCsApi->create_vpc_routing_table: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **vpc_id** | **String**| The VPC identifier | 
 **routing_table_prototype** | [**RoutingTablePrototype**](RoutingTablePrototype.md)| The routing table prototype object | 

### Return type

[**RoutingTable**](RoutingTable.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_vpc_routing_table_route

> Route create_vpc_routing_table_route(version, generation, vpc_id, routing_table_id, route_prototype)

Create a VPC route

This request creates a new VPC route from a VPC route prototype object. The prototype object is structured in the same way as a retrieved VPC route and contains the information necessary to create the route.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPCsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
vpc_id = 'vpc_id_example' # String | The VPC identifier
routing_table_id = 'routing_table_id_example' # String | The routing table identifier
route_prototype = IbmCloudVpc::RoutePrototype.new # RoutePrototype | The VPC route prototype object

begin
  #Create a VPC route
  result = api_instance.create_vpc_routing_table_route(version, generation, vpc_id, routing_table_id, route_prototype)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPCsApi->create_vpc_routing_table_route: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **vpc_id** | **String**| The VPC identifier | 
 **routing_table_id** | **String**| The routing table identifier | 
 **route_prototype** | [**RoutePrototype**](RoutePrototype.md)| The VPC route prototype object | 

### Return type

[**Route**](Route.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_vpc

> delete_vpc(version, generation, id)

Delete specified VPC

This request deletes a VPC. This operation cannot be reversed. For this request to succeed, the VPC must not contain any instances, subnets, or public gateways. All security groups and network ACLs associated with the VPC are automatically deleted. All flow log collectors with `auto_delete` set to `true` targeting the VPC or any resource in the VPC are automatically deleted.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPCsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The VPC identifier

begin
  #Delete specified VPC
  api_instance.delete_vpc(version, generation, id)
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPCsApi->delete_vpc: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The VPC identifier | 

### Return type

nil (empty response body)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_vpc_address_prefix

> delete_vpc_address_prefix(version, generation, vpc_id, id)

Delete specified address pool prefix

This request deletes a prefix. This operation cannot be reversed. The request will fail if any subnets use addresses from this prefix.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPCsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
vpc_id = 'vpc_id_example' # String | The VPC identifier
id = 'id_example' # String | The prefix identifier

begin
  #Delete specified address pool prefix
  api_instance.delete_vpc_address_prefix(version, generation, vpc_id, id)
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPCsApi->delete_vpc_address_prefix: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **vpc_id** | **String**| The VPC identifier | 
 **id** | **String**| The prefix identifier | 

### Return type

nil (empty response body)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_vpc_route

> delete_vpc_route(version, generation, vpc_id, id)

Delete the specified route in the VPC's default routing table

This request deletes a route. This operation cannot be reversed.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPCsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
vpc_id = 'vpc_id_example' # String | The VPC identifier
id = 'id_example' # String | The route identifier

begin
  #Delete the specified route in the VPC's default routing table
  api_instance.delete_vpc_route(version, generation, vpc_id, id)
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPCsApi->delete_vpc_route: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **vpc_id** | **String**| The VPC identifier | 
 **id** | **String**| The route identifier | 

### Return type

nil (empty response body)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_vpc_routing_table

> delete_vpc_routing_table(version, generation, vpc_id, id)

Delete specified VPC routing table

This request deletes a routing table.  A routing table cannot be deleted if it is associated with any subnets in the VPC. Additionally, a VPC's default routing table cannot be deleted. This operation cannot be reversed.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPCsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
vpc_id = 'vpc_id_example' # String | The VPC identifier
id = 'id_example' # String | The routing table identifier

begin
  #Delete specified VPC routing table
  api_instance.delete_vpc_routing_table(version, generation, vpc_id, id)
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPCsApi->delete_vpc_routing_table: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **vpc_id** | **String**| The VPC identifier | 
 **id** | **String**| The routing table identifier | 

### Return type

nil (empty response body)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_vpc_routing_table_route

> delete_vpc_routing_table_route(version, generation, vpc_id, routing_table_id, id)

Delete the specified VPC route

This request deletes a VPC route. This operation cannot be reversed.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPCsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
vpc_id = 'vpc_id_example' # String | The VPC identifier
routing_table_id = 'routing_table_id_example' # String | The routing table identifier
id = 'id_example' # String | The VPC routing table route identifier

begin
  #Delete the specified VPC route
  api_instance.delete_vpc_routing_table_route(version, generation, vpc_id, routing_table_id, id)
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPCsApi->delete_vpc_routing_table_route: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **vpc_id** | **String**| The VPC identifier | 
 **routing_table_id** | **String**| The routing table identifier | 
 **id** | **String**| The VPC routing table route identifier | 

### Return type

nil (empty response body)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_vpc

> VPC get_vpc(version, generation, id)

Retrieve specified VPC

This request retrieves a single VPC specified by the identifier in the URL.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPCsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The VPC identifier

begin
  #Retrieve specified VPC
  result = api_instance.get_vpc(version, generation, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPCsApi->get_vpc: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The VPC identifier | 

### Return type

[**VPC**](VPC.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_vpc_address_prefix

> AddressPrefix get_vpc_address_prefix(version, generation, vpc_id, id)

Retrieve specified address pool prefix

This request retrieves a single prefix specified by the identifier in the URL.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPCsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
vpc_id = 'vpc_id_example' # String | The VPC identifier
id = 'id_example' # String | The prefix identifier

begin
  #Retrieve specified address pool prefix
  result = api_instance.get_vpc_address_prefix(version, generation, vpc_id, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPCsApi->get_vpc_address_prefix: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **vpc_id** | **String**| The VPC identifier | 
 **id** | **String**| The prefix identifier | 

### Return type

[**AddressPrefix**](AddressPrefix.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_vpc_default_network_acl

> DefaultNetworkACL get_vpc_default_network_acl(version, generation, id)

Retrieve a VPC's default network ACL

This request retrieves the default network ACL for the VPC specified by the identifier in the URL. The default network ACL is applied to any new subnets in the VPC which do not specify a network ACL.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPCsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The VPC identifier

begin
  #Retrieve a VPC's default network ACL
  result = api_instance.get_vpc_default_network_acl(version, generation, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPCsApi->get_vpc_default_network_acl: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The VPC identifier | 

### Return type

[**DefaultNetworkACL**](DefaultNetworkACL.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_vpc_default_routing_table

> DefaultRoutingTable get_vpc_default_routing_table(version, generation, id)

Retrieve a VPC's default routing table

This request retrieves the default routing table for the VPC specified by the identifier in the URL. The default routing table is associated with any subnets in the VPC which have not been explicitly associated with a user-defined routing table.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPCsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The VPC identifier

begin
  #Retrieve a VPC's default routing table
  result = api_instance.get_vpc_default_routing_table(version, generation, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPCsApi->get_vpc_default_routing_table: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The VPC identifier | 

### Return type

[**DefaultRoutingTable**](DefaultRoutingTable.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_vpc_default_security_group

> DefaultSecurityGroup get_vpc_default_security_group(version, generation, id)

Retrieve a VPC's default security group

This request retrieves the default security group for the VPC specified by the identifier in the URL. The default security group is applied to any new network interfaces in the VPC that do not specify a security group.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPCsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The VPC identifier

begin
  #Retrieve a VPC's default security group
  result = api_instance.get_vpc_default_security_group(version, generation, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPCsApi->get_vpc_default_security_group: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The VPC identifier | 

### Return type

[**DefaultSecurityGroup**](DefaultSecurityGroup.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_vpc_route

> Route get_vpc_route(version, generation, vpc_id, id)

Retrieve the specified route in the VPC's default routing table

This request retrieves a single route specified by the identifier in the URL.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPCsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
vpc_id = 'vpc_id_example' # String | The VPC identifier
id = 'id_example' # String | The route identifier

begin
  #Retrieve the specified route in the VPC's default routing table
  result = api_instance.get_vpc_route(version, generation, vpc_id, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPCsApi->get_vpc_route: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **vpc_id** | **String**| The VPC identifier | 
 **id** | **String**| The route identifier | 

### Return type

[**Route**](Route.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_vpc_routing_table

> RoutingTable get_vpc_routing_table(version, generation, vpc_id, id)

Retrieve specified VPC routing table

This request retrieves a single routing table specified by the identifier in the URL.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPCsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
vpc_id = 'vpc_id_example' # String | The VPC identifier
id = 'id_example' # String | The routing table identifier

begin
  #Retrieve specified VPC routing table
  result = api_instance.get_vpc_routing_table(version, generation, vpc_id, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPCsApi->get_vpc_routing_table: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **vpc_id** | **String**| The VPC identifier | 
 **id** | **String**| The routing table identifier | 

### Return type

[**RoutingTable**](RoutingTable.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_vpc_routing_table_route

> Route get_vpc_routing_table_route(version, generation, vpc_id, routing_table_id, id)

Retrieve the specified VPC route

This request retrieves a single VPC route specified by the identifier in the URL path.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPCsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
vpc_id = 'vpc_id_example' # String | The VPC identifier
routing_table_id = 'routing_table_id_example' # String | The routing table identifier
id = 'id_example' # String | The VPC routing table route identifier

begin
  #Retrieve the specified VPC route
  result = api_instance.get_vpc_routing_table_route(version, generation, vpc_id, routing_table_id, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPCsApi->get_vpc_routing_table_route: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **vpc_id** | **String**| The VPC identifier | 
 **routing_table_id** | **String**| The routing table identifier | 
 **id** | **String**| The VPC routing table route identifier | 

### Return type

[**Route**](Route.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_vpc_address_prefixes

> AddressPrefixCollection list_vpc_address_prefixes(version, generation, vpc_id, opts)

List all address pool prefixes for a VPC

This request lists all address pool prefixes for a VPC.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPCsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
vpc_id = 'vpc_id_example' # String | The VPC identifier
opts = {
  start: 'start_example', # String | A server-supplied token determining what resource to start the page on
  limit: 50 # Integer | The number of resources to return on a page
}

begin
  #List all address pool prefixes for a VPC
  result = api_instance.list_vpc_address_prefixes(version, generation, vpc_id, opts)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPCsApi->list_vpc_address_prefixes: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **vpc_id** | **String**| The VPC identifier | 
 **start** | **String**| A server-supplied token determining what resource to start the page on | [optional] 
 **limit** | **Integer**| The number of resources to return on a page | [optional] [default to 50]

### Return type

[**AddressPrefixCollection**](AddressPrefixCollection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_vpc_routes

> RouteCollection list_vpc_routes(version, generation, vpc_id, opts)

List all routes in the VPC's default routing table.

This request retrieves routes in the VPC's default routing table. Each route is zone-specific and directs any packets matching its destination CIDR block to a `next_hop` IP address. The most specific route matching a packet's destination will be used. If multiple equally-specific routes exist, traffic will be distributed across them.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPCsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
vpc_id = 'vpc_id_example' # String | The VPC identifier
opts = {
  zone_name: 'zone_name_example', # String | Filters the collection to resources in the zone with the exact specified name
  start: 'start_example', # String | A server-supplied token determining what resource to start the page on
  limit: 50 # Integer | The number of resources to return on a page
}

begin
  #List all routes in the VPC's default routing table.
  result = api_instance.list_vpc_routes(version, generation, vpc_id, opts)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPCsApi->list_vpc_routes: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **vpc_id** | **String**| The VPC identifier | 
 **zone_name** | **String**| Filters the collection to resources in the zone with the exact specified name | [optional] 
 **start** | **String**| A server-supplied token determining what resource to start the page on | [optional] 
 **limit** | **Integer**| The number of resources to return on a page | [optional] [default to 50]

### Return type

[**RouteCollection**](RouteCollection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_vpc_routing_table_routes

> RouteCollection list_vpc_routing_table_routes(version, generation, vpc_id, routing_table_id, opts)

List all the routes of a VPC routing table

This request lists all the routes for the specified VPC routing table.  If a subnet has been associated with this routing table, delivery of packets sent on a subnet is performed according to the action of the most specific matching route in the table (provided the subnet and route are in the same zone).  If multiple equally-specific routes exist, traffic will be distributed across them.  If no routes match, delivery will be controlled by the system's built-in routes.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPCsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
vpc_id = 'vpc_id_example' # String | The VPC identifier
routing_table_id = 'routing_table_id_example' # String | The routing table identifier
opts = {
  start: 'start_example', # String | A server-supplied token determining what resource to start the page on
  limit: 50 # Integer | The number of resources to return on a page
}

begin
  #List all the routes of a VPC routing table
  result = api_instance.list_vpc_routing_table_routes(version, generation, vpc_id, routing_table_id, opts)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPCsApi->list_vpc_routing_table_routes: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **vpc_id** | **String**| The VPC identifier | 
 **routing_table_id** | **String**| The routing table identifier | 
 **start** | **String**| A server-supplied token determining what resource to start the page on | [optional] 
 **limit** | **Integer**| The number of resources to return on a page | [optional] [default to 50]

### Return type

[**RouteCollection**](RouteCollection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_vpc_routing_tables

> RoutingTableCollection list_vpc_routing_tables(version, generation, vpc_id, opts)

List all routing tables for a VPC

This request lists all user-defined routing tables for a VPC.  Each subnet in a VPC is associated with a routing table, which controls delivery of packets sent on that subnet according to the action of the most specific matching route in the table.  If multiple equally-specific routes exist, traffic will be distributed across them.  If no routes match, delivery will be controlled by the system's built-in routes.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPCsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
vpc_id = 'vpc_id_example' # String | The VPC identifier
opts = {
  start: 'start_example', # String | A server-supplied token determining what resource to start the page on
  limit: 50, # Integer | The number of resources to return on a page
  is_default: true # Boolean | If the supplied value is `true`, filters the routing table collection to only the default routing table. If the supplied value is `false`, filters the routing table collection to exclude the default routing table.
}

begin
  #List all routing tables for a VPC
  result = api_instance.list_vpc_routing_tables(version, generation, vpc_id, opts)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPCsApi->list_vpc_routing_tables: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **vpc_id** | **String**| The VPC identifier | 
 **start** | **String**| A server-supplied token determining what resource to start the page on | [optional] 
 **limit** | **Integer**| The number of resources to return on a page | [optional] [default to 50]
 **is_default** | **Boolean**| If the supplied value is &#x60;true&#x60;, filters the routing table collection to only the default routing table. If the supplied value is &#x60;false&#x60;, filters the routing table collection to exclude the default routing table. | [optional] 

### Return type

[**RoutingTableCollection**](RoutingTableCollection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_vpcs

> VPCCollection list_vpcs(version, generation, opts)

List all VPCs

This request lists all VPCs. A VPC is a virtual network that belongs to an account and provides logical isolation from other networks. A VPC is made up of resources in one or more zones. VPCs are regional, and each VPC can contain resources in multiple zones in a region.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPCsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
opts = {
  start: 'start_example', # String | A server-supplied token determining what resource to start the page on
  limit: 50, # Integer | The number of resources to return on a page
  resource_group_id: 'resource_group_id_example', # String | Filters the collection to resources within one of the resource groups identified in a comma-separated list of resource group identifiers
  classic_access: true # Boolean | The `classic_access` parameter filters the returned collection by the supplied field. If the supplied field is `true`, only Classic Access VPCs will be returned. If the supplied field is `false`, only VPCs without Classic Access will be returned.
}

begin
  #List all VPCs
  result = api_instance.list_vpcs(version, generation, opts)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPCsApi->list_vpcs: #{e}"
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
 **classic_access** | **Boolean**| The &#x60;classic_access&#x60; parameter filters the returned collection by the supplied field. If the supplied field is &#x60;true&#x60;, only Classic Access VPCs will be returned. If the supplied field is &#x60;false&#x60;, only VPCs without Classic Access will be returned. | [optional] 

### Return type

[**VPCCollection**](VPCCollection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_vpc

> VPC update_vpc(version, generation, id, vpc_patch)

Update specified VPC

This request updates a VPC's name.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPCsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The VPC identifier
vpc_patch = IbmCloudVpc::VPCPatch.new # VPCPatch | The VPC patch

begin
  #Update specified VPC
  result = api_instance.update_vpc(version, generation, id, vpc_patch)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPCsApi->update_vpc: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The VPC identifier | 
 **vpc_patch** | [**VPCPatch**](VPCPatch.md)| The VPC patch | 

### Return type

[**VPC**](VPC.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/merge-patch+json
- **Accept**: application/json


## update_vpc_address_prefix

> AddressPrefix update_vpc_address_prefix(version, generation, vpc_id, id, address_prefix_patch)

Update an address pool prefix

This request updates a prefix with the information in a provided prefix patch. The prefix patch object is structured in the same way as a retrieved prefix and contains only the information to be updated.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPCsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
vpc_id = 'vpc_id_example' # String | The VPC identifier
id = 'id_example' # String | The prefix identifier
address_prefix_patch = IbmCloudVpc::AddressPrefixPatch.new # AddressPrefixPatch | The prefix patch

begin
  #Update an address pool prefix
  result = api_instance.update_vpc_address_prefix(version, generation, vpc_id, id, address_prefix_patch)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPCsApi->update_vpc_address_prefix: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **vpc_id** | **String**| The VPC identifier | 
 **id** | **String**| The prefix identifier | 
 **address_prefix_patch** | [**AddressPrefixPatch**](AddressPrefixPatch.md)| The prefix patch | 

### Return type

[**AddressPrefix**](AddressPrefix.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/merge-patch+json
- **Accept**: application/json


## update_vpc_route

> Route update_vpc_route(version, generation, vpc_id, id, route_patch)

Update the specified route in the VPC's default routing table

This request updates a route with the information in a provided route patch. The route patch object is structured in the same way as a retrieved route and contains only the information to be updated.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPCsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
vpc_id = 'vpc_id_example' # String | The VPC identifier
id = 'id_example' # String | The route identifier
route_patch = IbmCloudVpc::RoutePatch.new # RoutePatch | The route patch

begin
  #Update the specified route in the VPC's default routing table
  result = api_instance.update_vpc_route(version, generation, vpc_id, id, route_patch)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPCsApi->update_vpc_route: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **vpc_id** | **String**| The VPC identifier | 
 **id** | **String**| The route identifier | 
 **route_patch** | [**RoutePatch**](RoutePatch.md)| The route patch | 

### Return type

[**Route**](Route.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/merge-patch+json
- **Accept**: application/json


## update_vpc_routing_table

> RoutingTable update_vpc_routing_table(version, generation, vpc_id, id, routing_table_patch)

Update specified VPC routing table

This request updates a routing table with the information in a provided routing table patch. The patch object is structured in the same way as a retrieved table and contains only the information to be updated.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPCsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
vpc_id = 'vpc_id_example' # String | The VPC identifier
id = 'id_example' # String | The routing table identifier
routing_table_patch = IbmCloudVpc::RoutingTablePatch.new # RoutingTablePatch | The routing table patch

begin
  #Update specified VPC routing table
  result = api_instance.update_vpc_routing_table(version, generation, vpc_id, id, routing_table_patch)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPCsApi->update_vpc_routing_table: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **vpc_id** | **String**| The VPC identifier | 
 **id** | **String**| The routing table identifier | 
 **routing_table_patch** | [**RoutingTablePatch**](RoutingTablePatch.md)| The routing table patch | 

### Return type

[**RoutingTable**](RoutingTable.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/merge-patch+json
- **Accept**: application/json


## update_vpc_routing_table_route

> Route update_vpc_routing_table_route(version, generation, vpc_id, routing_table_id, id, route_patch)

Update the specified VPC route

This request updates a VPC route with the information provided in a route patch object. The patch object is structured in the same way as a retrieved VPC route and needs to contain only the information to be updated.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPCsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
vpc_id = 'vpc_id_example' # String | The VPC identifier
routing_table_id = 'routing_table_id_example' # String | The routing table identifier
id = 'id_example' # String | The VPC routing table route identifier
route_patch = IbmCloudVpc::RoutePatch.new # RoutePatch | The VPC route patch.

begin
  #Update the specified VPC route
  result = api_instance.update_vpc_routing_table_route(version, generation, vpc_id, routing_table_id, id, route_patch)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPCsApi->update_vpc_routing_table_route: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **vpc_id** | **String**| The VPC identifier | 
 **routing_table_id** | **String**| The routing table identifier | 
 **id** | **String**| The VPC routing table route identifier | 
 **route_patch** | [**RoutePatch**](RoutePatch.md)| The VPC route patch. | 

### Return type

[**Route**](Route.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/merge-patch+json
- **Accept**: application/json

