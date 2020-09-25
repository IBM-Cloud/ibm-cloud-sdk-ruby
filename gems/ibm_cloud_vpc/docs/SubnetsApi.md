# IbmCloudVpc::SubnetsApi

All URIs are relative to *https://us-south.iaas.cloud.ibm.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_subnet**](SubnetsApi.md#create_subnet) | **POST** /subnets | Create a subnet
[**delete_subnet**](SubnetsApi.md#delete_subnet) | **DELETE** /subnets/{id} | Delete specified subnet
[**get_subnet**](SubnetsApi.md#get_subnet) | **GET** /subnets/{id} | Retrieve specified subnet
[**get_subnet_network_acl**](SubnetsApi.md#get_subnet_network_acl) | **GET** /subnets/{id}/network_acl | Retrieve a subnet&#39;s attached network ACL
[**get_subnet_public_gateway**](SubnetsApi.md#get_subnet_public_gateway) | **GET** /subnets/{id}/public_gateway | Retrieve a subnet&#39;s attached public gateway
[**list_subnets**](SubnetsApi.md#list_subnets) | **GET** /subnets | List all subnets
[**replace_subnet_network_acl**](SubnetsApi.md#replace_subnet_network_acl) | **PUT** /subnets/{id}/network_acl | Attach a network ACL to a subnet
[**set_subnet_public_gateway**](SubnetsApi.md#set_subnet_public_gateway) | **PUT** /subnets/{id}/public_gateway | Attach a public gateway to a subnet
[**unset_subnet_public_gateway**](SubnetsApi.md#unset_subnet_public_gateway) | **DELETE** /subnets/{id}/public_gateway | Detach a public gateway from a subnet
[**update_subnet**](SubnetsApi.md#update_subnet) | **PATCH** /subnets/{id} | Update specified subnet



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
  resource_group_id: 'resource_group_id_example' # String | Filters the collection to resources within one of the resource groups identified in a comma-separated list of resource group identifiers
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

- **Content-Type**: application/json
- **Accept**: application/json
