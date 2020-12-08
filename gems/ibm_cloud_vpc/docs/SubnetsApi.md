# IbmCloudVpc::SubnetsApi

All URIs are relative to *https://us-south.iaas.cloud.ibm.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_subnet**](SubnetsApi.md#create_subnet) | **POST** /subnets | Create a subnet
[**create_subnet_reserved_ip**](SubnetsApi.md#create_subnet_reserved_ip) | **POST** /subnets/{subnet_id}/reserved_ips | Reserve an IP in a subnet
[**delete_subnet**](SubnetsApi.md#delete_subnet) | **DELETE** /subnets/{id} | Delete specified subnet
[**delete_subnet_reserved_ip**](SubnetsApi.md#delete_subnet_reserved_ip) | **DELETE** /subnets/{subnet_id}/reserved_ips/{id} | Release specified reserved IP
[**get_subnet**](SubnetsApi.md#get_subnet) | **GET** /subnets/{id} | Retrieve specified subnet
[**get_subnet_network_acl**](SubnetsApi.md#get_subnet_network_acl) | **GET** /subnets/{id}/network_acl | Retrieve a subnet&#39;s attached network ACL
[**get_subnet_public_gateway**](SubnetsApi.md#get_subnet_public_gateway) | **GET** /subnets/{id}/public_gateway | Retrieve a subnet&#39;s attached public gateway
[**get_subnet_reserved_ip**](SubnetsApi.md#get_subnet_reserved_ip) | **GET** /subnets/{subnet_id}/reserved_ips/{id} | Retrieve specified reserved IP
[**get_subnet_routing_table**](SubnetsApi.md#get_subnet_routing_table) | **GET** /subnets/{id}/routing_table | Retrieve a subnet&#39;s attached routing table
[**list_subnet_reserved_ips**](SubnetsApi.md#list_subnet_reserved_ips) | **GET** /subnets/{subnet_id}/reserved_ips | List all reserved IPs in a subnet
[**list_subnets**](SubnetsApi.md#list_subnets) | **GET** /subnets | List all subnets
[**replace_subnet_network_acl**](SubnetsApi.md#replace_subnet_network_acl) | **PUT** /subnets/{id}/network_acl | Attach a network ACL to a subnet
[**replace_subnet_routing_table**](SubnetsApi.md#replace_subnet_routing_table) | **PUT** /subnets/{id}/routing_table | Attach a routing table to a subnet
[**set_subnet_public_gateway**](SubnetsApi.md#set_subnet_public_gateway) | **PUT** /subnets/{id}/public_gateway | Attach a public gateway to a subnet
[**unset_subnet_public_gateway**](SubnetsApi.md#unset_subnet_public_gateway) | **DELETE** /subnets/{id}/public_gateway | Detach a public gateway from a subnet
[**update_subnet**](SubnetsApi.md#update_subnet) | **PATCH** /subnets/{id} | Update specified subnet
[**update_subnet_reserved_ip**](SubnetsApi.md#update_subnet_reserved_ip) | **PATCH** /subnets/{subnet_id}/reserved_ips/{id} | Update specified reserved IP



## create_subnet

> Subnet create_subnet(version, generation, subnet_prototype)

Create a subnet

This request creates a new subnet from a subnet prototype object. The prototype object is structured in the same way as a retrieved subnet, and contains the information necessary to create the new subnet. For this request to succeed, the prototype's CIDR block must not overlap with an existing subnet in the VPC.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::SubnetsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
subnet_prototype = {"total_ipv4_address_count":256,"vpc":{"id":"4727d842-f94f-4a2d-824a-9bc9b02c523b"},"zone":{"name":"us-south-1"}} # SubnetPrototype | The subnet prototype object

begin
  #Create a subnet
  result = api_instance.create_subnet(version, generation, subnet_prototype)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling SubnetsApi->create_subnet: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **subnet_prototype** | [**SubnetPrototype**](SubnetPrototype.md)| The subnet prototype object | 

### Return type

[**Subnet**](Subnet.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_subnet_reserved_ip

> ReservedIP create_subnet_reserved_ip(version, generation, subnet_id, reserved_ip_prototype)

Reserve an IP in a subnet

This request reserves a system-selected IP address in a subnet.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::SubnetsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
subnet_id = 'subnet_id_example' # String | The subnet identifier
reserved_ip_prototype = IbmCloudVpc::ReservedIPPrototype.new # ReservedIPPrototype | The reserved IP prototype object

begin
  #Reserve an IP in a subnet
  result = api_instance.create_subnet_reserved_ip(version, generation, subnet_id, reserved_ip_prototype)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling SubnetsApi->create_subnet_reserved_ip: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **subnet_id** | **String**| The subnet identifier | 
 **reserved_ip_prototype** | [**ReservedIPPrototype**](ReservedIPPrototype.md)| The reserved IP prototype object | 

### Return type

[**ReservedIP**](ReservedIP.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_subnet

> delete_subnet(version, generation, id)

Delete specified subnet

This request deletes a subnet. This operation cannot be reversed. For this request to succeed, the subnet must not be referenced by any network interfaces, VPN gateways, or load balancers. A delete operation automatically detaches the subnet from any network ACLs, public gateways, or endpoint gateways. All flow log collectors with `auto_delete` set to `true` targeting the subnet or any resource in the subnet are automatically deleted.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::SubnetsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The subnet identifier

begin
  #Delete specified subnet
  api_instance.delete_subnet(version, generation, id)
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling SubnetsApi->delete_subnet: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The subnet identifier | 

### Return type

nil (empty response body)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_subnet_reserved_ip

> delete_subnet_reserved_ip(version, generation, subnet_id, id)

Release specified reserved IP

This request releases a reserved IP. This operation cannot be reversed.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::SubnetsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
subnet_id = 'subnet_id_example' # String | The subnet identifier
id = 'id_example' # String | The reserved IP identifier

begin
  #Release specified reserved IP
  api_instance.delete_subnet_reserved_ip(version, generation, subnet_id, id)
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling SubnetsApi->delete_subnet_reserved_ip: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **subnet_id** | **String**| The subnet identifier | 
 **id** | **String**| The reserved IP identifier | 

### Return type

nil (empty response body)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_subnet

> Subnet get_subnet(version, generation, id)

Retrieve specified subnet

This request retrieves a single subnet specified by the identifier in the URL.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::SubnetsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The subnet identifier

begin
  #Retrieve specified subnet
  result = api_instance.get_subnet(version, generation, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling SubnetsApi->get_subnet: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The subnet identifier | 

### Return type

[**Subnet**](Subnet.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_subnet_network_acl

> NetworkACL get_subnet_network_acl(version, generation, id)

Retrieve a subnet's attached network ACL

This request retrieves the network ACL attached to the subnet specified by the identifier in the URL.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::SubnetsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The subnet identifier

begin
  #Retrieve a subnet's attached network ACL
  result = api_instance.get_subnet_network_acl(version, generation, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling SubnetsApi->get_subnet_network_acl: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The subnet identifier | 

### Return type

[**NetworkACL**](NetworkACL.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_subnet_public_gateway

> PublicGateway get_subnet_public_gateway(version, generation, id)

Retrieve a subnet's attached public gateway

This request retrieves the public gateway attached to the subnet specified by the identifier in the URL.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::SubnetsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The subnet identifier

begin
  #Retrieve a subnet's attached public gateway
  result = api_instance.get_subnet_public_gateway(version, generation, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling SubnetsApi->get_subnet_public_gateway: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The subnet identifier | 

### Return type

[**PublicGateway**](PublicGateway.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_subnet_reserved_ip

> ReservedIP get_subnet_reserved_ip(version, generation, subnet_id, id)

Retrieve specified reserved IP

This request retrieves a single reserved IP specified by the identifier in the URL.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::SubnetsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
subnet_id = 'subnet_id_example' # String | The subnet identifier
id = 'id_example' # String | The reserved IP identifier

begin
  #Retrieve specified reserved IP
  result = api_instance.get_subnet_reserved_ip(version, generation, subnet_id, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling SubnetsApi->get_subnet_reserved_ip: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **subnet_id** | **String**| The subnet identifier | 
 **id** | **String**| The reserved IP identifier | 

### Return type

[**ReservedIP**](ReservedIP.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_subnet_routing_table

> RoutingTable get_subnet_routing_table(version, generation, id)

Retrieve a subnet's attached routing table

This request retrieves the routing table attached to the subnet specified by the identifier in the URL.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::SubnetsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The subnet identifier

begin
  #Retrieve a subnet's attached routing table
  result = api_instance.get_subnet_routing_table(version, generation, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling SubnetsApi->get_subnet_routing_table: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The subnet identifier | 

### Return type

[**RoutingTable**](RoutingTable.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_subnet_reserved_ips

> ReservedIPCollection list_subnet_reserved_ips(version, generation, subnet_id, opts)

List all reserved IPs in a subnet

This request lists reserved IPs in the subnet that are unbound or bound to an endpoint gateway.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::SubnetsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
subnet_id = 'subnet_id_example' # String | The subnet identifier
opts = {
  start: 'start_example', # String | A server-supplied token determining what resource to start the page on
  limit: 50, # Integer | The number of resources to return on a page
  sort: 'address' # String | Sorts the returned collection by the specified field name in ascending order. A `-` may be prepended to the field name to sort in descending order. For example, the value `-created_at` sorts the collection by the `created_at` field in descending order, and the value `name` sorts it by the `name` field in ascending order.
}

begin
  #List all reserved IPs in a subnet
  result = api_instance.list_subnet_reserved_ips(version, generation, subnet_id, opts)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling SubnetsApi->list_subnet_reserved_ips: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **subnet_id** | **String**| The subnet identifier | 
 **start** | **String**| A server-supplied token determining what resource to start the page on | [optional] 
 **limit** | **Integer**| The number of resources to return on a page | [optional] [default to 50]
 **sort** | **String**| Sorts the returned collection by the specified field name in ascending order. A &#x60;-&#x60; may be prepended to the field name to sort in descending order. For example, the value &#x60;-created_at&#x60; sorts the collection by the &#x60;created_at&#x60; field in descending order, and the value &#x60;name&#x60; sorts it by the &#x60;name&#x60; field in ascending order. | [optional] [default to &#39;address&#39;]

### Return type

[**ReservedIPCollection**](ReservedIPCollection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_subnets

> SubnetCollection list_subnets(version, generation, opts)

List all subnets

This request lists all subnets in the region. Subnets are contiguous ranges of IP addresses specified in CIDR block notation. Each subnet is within a particular zone and cannot span multiple zones or regions.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::SubnetsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
opts = {
  start: 'start_example', # String | A server-supplied token determining what resource to start the page on
  limit: 50, # Integer | The number of resources to return on a page
  resource_group_id: 'resource_group_id_example', # String | Filters the collection to resources within one of the resource groups identified in a comma-separated list of resource group identifiers
  routing_table_id: 'routing_table_id_example', # String | Filters the collection to subnets with the routing table of the specified identifier
  routing_table_name: 'routing_table_name_example' # String | Filters the collection to subnets with the routing table of the specified name
}

begin
  #List all subnets
  result = api_instance.list_subnets(version, generation, opts)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling SubnetsApi->list_subnets: #{e}"
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
 **routing_table_id** | **String**| Filters the collection to subnets with the routing table of the specified identifier | [optional] 
 **routing_table_name** | **String**| Filters the collection to subnets with the routing table of the specified name | [optional] 

### Return type

[**SubnetCollection**](SubnetCollection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## replace_subnet_network_acl

> NetworkACL replace_subnet_network_acl(version, generation, id, unknown_base_type)

Attach a network ACL to a subnet

This request attaches the network ACL, specified in the request body, to the subnet specified by the subnet identifier in the URL. This replaces the existing network ACL on the subnet.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::SubnetsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The subnet identifier
unknown_base_type = IbmCloudVpc::UNKNOWN_BASE_TYPE.new # UNKNOWN_BASE_TYPE | The network ACL identity

begin
  #Attach a network ACL to a subnet
  result = api_instance.replace_subnet_network_acl(version, generation, id, unknown_base_type)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling SubnetsApi->replace_subnet_network_acl: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The subnet identifier | 
 **unknown_base_type** | [**UNKNOWN_BASE_TYPE**](UNKNOWN_BASE_TYPE.md)| The network ACL identity | 

### Return type

[**NetworkACL**](NetworkACL.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## replace_subnet_routing_table

> RoutingTable replace_subnet_routing_table(version, generation, id, unknown_base_type)

Attach a routing table to a subnet

This request attaches the routing table, specified in the request body, to the subnet specified by the subnet identifier in the URL. This replaces the existing routing table on the subnet.  For this request to succeed, the routing table `route_direct_link_ingress`, `route_transit_gateway_ingress`, and `route_vpc_zone_ingress` properties must be `false`.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::SubnetsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The subnet identifier
unknown_base_type = IbmCloudVpc::UNKNOWN_BASE_TYPE.new # UNKNOWN_BASE_TYPE | The routing table identity

begin
  #Attach a routing table to a subnet
  result = api_instance.replace_subnet_routing_table(version, generation, id, unknown_base_type)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling SubnetsApi->replace_subnet_routing_table: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The subnet identifier | 
 **unknown_base_type** | [**UNKNOWN_BASE_TYPE**](UNKNOWN_BASE_TYPE.md)| The routing table identity | 

### Return type

[**RoutingTable**](RoutingTable.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_subnet_public_gateway

> PublicGateway set_subnet_public_gateway(version, generation, id, unknown_base_type)

Attach a public gateway to a subnet

This request attaches the public gateway, specified in the request body, to the subnet specified by the subnet identifier in the URL. The public gateway must have the same VPC and zone as the subnet.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::SubnetsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The subnet identifier
unknown_base_type = IbmCloudVpc::UNKNOWN_BASE_TYPE.new # UNKNOWN_BASE_TYPE | The public gateway identity

begin
  #Attach a public gateway to a subnet
  result = api_instance.set_subnet_public_gateway(version, generation, id, unknown_base_type)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling SubnetsApi->set_subnet_public_gateway: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The subnet identifier | 
 **unknown_base_type** | [**UNKNOWN_BASE_TYPE**](UNKNOWN_BASE_TYPE.md)| The public gateway identity | 

### Return type

[**PublicGateway**](PublicGateway.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## unset_subnet_public_gateway

> unset_subnet_public_gateway(version, generation, id)

Detach a public gateway from a subnet

This request detaches the public gateway from the subnet specified by the subnet identifier in the URL.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::SubnetsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The subnet identifier

begin
  #Detach a public gateway from a subnet
  api_instance.unset_subnet_public_gateway(version, generation, id)
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling SubnetsApi->unset_subnet_public_gateway: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The subnet identifier | 

### Return type

nil (empty response body)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_subnet

> Subnet update_subnet(version, generation, id, subnet_patch)

Update specified subnet

This request updates a subnet with the information in a provided subnet patch. The subnet patch object is structured in the same way as a retrieved subnet and contains only the information to be updated.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::SubnetsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The subnet identifier
subnet_patch = IbmCloudVpc::SubnetPatch.new # SubnetPatch | The subnet patch

begin
  #Update specified subnet
  result = api_instance.update_subnet(version, generation, id, subnet_patch)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling SubnetsApi->update_subnet: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The subnet identifier | 
 **subnet_patch** | [**SubnetPatch**](SubnetPatch.md)| The subnet patch | 

### Return type

[**Subnet**](Subnet.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/merge-patch+json
- **Accept**: application/json


## update_subnet_reserved_ip

> ReservedIP update_subnet_reserved_ip(version, generation, subnet_id, id, reserved_ip_patch)

Update specified reserved IP

This request updates a reserved IP with the information in a provided reserved IP patch. The reserved IP patch object is structured in the same way as a retrieved reserved IP and contains only the information to be updated.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::SubnetsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
subnet_id = 'subnet_id_example' # String | The subnet identifier
id = 'id_example' # String | The reserved IP identifier
reserved_ip_patch = IbmCloudVpc::ReservedIPPatch.new # ReservedIPPatch | The reserved IP patch

begin
  #Update specified reserved IP
  result = api_instance.update_subnet_reserved_ip(version, generation, subnet_id, id, reserved_ip_patch)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling SubnetsApi->update_subnet_reserved_ip: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **subnet_id** | **String**| The subnet identifier | 
 **id** | **String**| The reserved IP identifier | 
 **reserved_ip_patch** | [**ReservedIPPatch**](ReservedIPPatch.md)| The reserved IP patch | 

### Return type

[**ReservedIP**](ReservedIP.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/merge-patch+json
- **Accept**: application/json

