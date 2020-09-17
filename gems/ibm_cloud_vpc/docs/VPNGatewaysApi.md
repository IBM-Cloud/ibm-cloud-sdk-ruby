# IbmCloudVpc::VPNGatewaysApi

All URIs are relative to *https://us-south.iaas.cloud.ibm.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_vpn_gateway_connection_local_cidr**](VPNGatewaysApi.md#add_vpn_gateway_connection_local_cidr) | **PUT** /vpn_gateways/{vpn_gateway_id}/connections/{id}/local_cidrs/{cidr_prefix}/{prefix_length} | Set a local CIDR on a VPN gateway connection
[**add_vpn_gateway_connection_peer_cidr**](VPNGatewaysApi.md#add_vpn_gateway_connection_peer_cidr) | **PUT** /vpn_gateways/{vpn_gateway_id}/connections/{id}/peer_cidrs/{cidr_prefix}/{prefix_length} | Set a peer CIDR on a VPN gateway connection
[**check_vpn_gateway_connection_local_cidr**](VPNGatewaysApi.md#check_vpn_gateway_connection_local_cidr) | **GET** /vpn_gateways/{vpn_gateway_id}/connections/{id}/local_cidrs/{cidr_prefix}/{prefix_length} | Check if the specified local CIDR exists on a VPN gateway connection
[**check_vpn_gateway_connection_peer_cidr**](VPNGatewaysApi.md#check_vpn_gateway_connection_peer_cidr) | **GET** /vpn_gateways/{vpn_gateway_id}/connections/{id}/peer_cidrs/{cidr_prefix}/{prefix_length} | Check if the specified peer CIDR exists on a VPN gateway connection
[**create_ike_policy**](VPNGatewaysApi.md#create_ike_policy) | **POST** /ike_policies | Create an IKE policy
[**create_ipsec_policy**](VPNGatewaysApi.md#create_ipsec_policy) | **POST** /ipsec_policies | Create an IPsec policy
[**create_vpn_gateway**](VPNGatewaysApi.md#create_vpn_gateway) | **POST** /vpn_gateways | Create a VPN gateway
[**create_vpn_gateway_connection**](VPNGatewaysApi.md#create_vpn_gateway_connection) | **POST** /vpn_gateways/{vpn_gateway_id}/connections | Create a VPN gateway connection
[**delete_ike_policy**](VPNGatewaysApi.md#delete_ike_policy) | **DELETE** /ike_policies/{id} | Delete an IKE policy
[**delete_ipsec_policy**](VPNGatewaysApi.md#delete_ipsec_policy) | **DELETE** /ipsec_policies/{id} | Delete an IPsec policy
[**delete_vpn_gateway**](VPNGatewaysApi.md#delete_vpn_gateway) | **DELETE** /vpn_gateways/{id} | Delete a VPN gateway
[**delete_vpn_gateway_connection**](VPNGatewaysApi.md#delete_vpn_gateway_connection) | **DELETE** /vpn_gateways/{vpn_gateway_id}/connections/{id} | Delete a VPN gateway connection
[**get_ike_policy**](VPNGatewaysApi.md#get_ike_policy) | **GET** /ike_policies/{id} | Retrieve the specified IKE policy
[**get_ipsec_policy**](VPNGatewaysApi.md#get_ipsec_policy) | **GET** /ipsec_policies/{id} | Retrieve the specified IPsec policy
[**get_vpn_gateway**](VPNGatewaysApi.md#get_vpn_gateway) | **GET** /vpn_gateways/{id} | Retrieve the specified VPN gateway
[**get_vpn_gateway_connection**](VPNGatewaysApi.md#get_vpn_gateway_connection) | **GET** /vpn_gateways/{vpn_gateway_id}/connections/{id} | Retrieve the specified VPN gateway connection
[**list_ike_policies**](VPNGatewaysApi.md#list_ike_policies) | **GET** /ike_policies | List all IKE policies
[**list_ike_policy_connections**](VPNGatewaysApi.md#list_ike_policy_connections) | **GET** /ike_policies/{id}/connections | List all connections that use the specified IKE policy
[**list_ipsec_policies**](VPNGatewaysApi.md#list_ipsec_policies) | **GET** /ipsec_policies | List all IPsec policies
[**list_ipsec_policy_connections**](VPNGatewaysApi.md#list_ipsec_policy_connections) | **GET** /ipsec_policies/{id}/connections | List all connections that use the specified IPsec policy
[**list_vpn_gateway_connection_local_cidrs**](VPNGatewaysApi.md#list_vpn_gateway_connection_local_cidrs) | **GET** /vpn_gateways/{vpn_gateway_id}/connections/{id}/local_cidrs | List all local CIDRs for a VPN gateway connection
[**list_vpn_gateway_connection_peer_cidrs**](VPNGatewaysApi.md#list_vpn_gateway_connection_peer_cidrs) | **GET** /vpn_gateways/{vpn_gateway_id}/connections/{id}/peer_cidrs | List all peer CIDRs for a VPN gateway connection
[**list_vpn_gateway_connections**](VPNGatewaysApi.md#list_vpn_gateway_connections) | **GET** /vpn_gateways/{vpn_gateway_id}/connections | List all connections of a VPN gateway
[**list_vpn_gateways**](VPNGatewaysApi.md#list_vpn_gateways) | **GET** /vpn_gateways | List all VPN gateways
[**remove_vpn_gateway_connection_local_cidr**](VPNGatewaysApi.md#remove_vpn_gateway_connection_local_cidr) | **DELETE** /vpn_gateways/{vpn_gateway_id}/connections/{id}/local_cidrs/{cidr_prefix}/{prefix_length} | Remove a local CIDR from a VPN gateway connection
[**remove_vpn_gateway_connection_peer_cidr**](VPNGatewaysApi.md#remove_vpn_gateway_connection_peer_cidr) | **DELETE** /vpn_gateways/{vpn_gateway_id}/connections/{id}/peer_cidrs/{cidr_prefix}/{prefix_length} | Remove a peer CIDR from a VPN gateway connection
[**update_ike_policy**](VPNGatewaysApi.md#update_ike_policy) | **PATCH** /ike_policies/{id} | Update an IKE policy
[**update_ipsec_policy**](VPNGatewaysApi.md#update_ipsec_policy) | **PATCH** /ipsec_policies/{id} | Update an IPsec policy
[**update_vpn_gateway**](VPNGatewaysApi.md#update_vpn_gateway) | **PATCH** /vpn_gateways/{id} | Update a VPN gateway
[**update_vpn_gateway_connection**](VPNGatewaysApi.md#update_vpn_gateway_connection) | **PATCH** /vpn_gateways/{vpn_gateway_id}/connections/{id} | Update a VPN gateway connection



## add_vpn_gateway_connection_local_cidr

> add_vpn_gateway_connection_local_cidr(version, generation, vpn_gateway_id, id, cidr_prefix, prefix_length)

Set a local CIDR on a VPN gateway connection

This request adds the specified CIDR to the specified VPN gateway connection. A request body is not required, and if supplied, is ignored. This request succeeds if the CIDR already exists on the specified VPN gateway connection.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPNGatewaysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
vpn_gateway_id = 'vpn_gateway_id_example' # String | The VPN gateway identifier
id = 'id_example' # String | The VPN gateway connection identifier
cidr_prefix = 'cidr_prefix_example' # String | The address prefix part of the CIDR
prefix_length = 'prefix_length_example' # String | The prefix length part of the CIDR

begin
  #Set a local CIDR on a VPN gateway connection
  api_instance.add_vpn_gateway_connection_local_cidr(version, generation, vpn_gateway_id, id, cidr_prefix, prefix_length)
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPNGatewaysApi->add_vpn_gateway_connection_local_cidr: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **vpn_gateway_id** | **String**| The VPN gateway identifier | 
 **id** | **String**| The VPN gateway connection identifier | 
 **cidr_prefix** | **String**| The address prefix part of the CIDR | 
 **prefix_length** | **String**| The prefix length part of the CIDR | 

### Return type

nil (empty response body)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## add_vpn_gateway_connection_peer_cidr

> add_vpn_gateway_connection_peer_cidr(version, generation, vpn_gateway_id, id, cidr_prefix, prefix_length)

Set a peer CIDR on a VPN gateway connection

This request adds the specified CIDR to the specified VPN gateway connection. A request body is not required, and if supplied, is ignored. This request succeeds if the CIDR already exists on the specified VPN gateway connection.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPNGatewaysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
vpn_gateway_id = 'vpn_gateway_id_example' # String | The VPN gateway identifier
id = 'id_example' # String | The VPN gateway connection identifier
cidr_prefix = 'cidr_prefix_example' # String | The address prefix part of the CIDR
prefix_length = 'prefix_length_example' # String | The prefix length part of the CIDR

begin
  #Set a peer CIDR on a VPN gateway connection
  api_instance.add_vpn_gateway_connection_peer_cidr(version, generation, vpn_gateway_id, id, cidr_prefix, prefix_length)
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPNGatewaysApi->add_vpn_gateway_connection_peer_cidr: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **vpn_gateway_id** | **String**| The VPN gateway identifier | 
 **id** | **String**| The VPN gateway connection identifier | 
 **cidr_prefix** | **String**| The address prefix part of the CIDR | 
 **prefix_length** | **String**| The prefix length part of the CIDR | 

### Return type

nil (empty response body)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## check_vpn_gateway_connection_local_cidr

> check_vpn_gateway_connection_local_cidr(version, generation, vpn_gateway_id, id, cidr_prefix, prefix_length)

Check if the specified local CIDR exists on a VPN gateway connection

This request succeeds if a CIDR exists on the specified VPN gateway connection and fails otherwise.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPNGatewaysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
vpn_gateway_id = 'vpn_gateway_id_example' # String | The VPN gateway identifier
id = 'id_example' # String | The VPN gateway connection identifier
cidr_prefix = 'cidr_prefix_example' # String | The address prefix part of the CIDR
prefix_length = 'prefix_length_example' # String | The prefix length part of the CIDR

begin
  #Check if the specified local CIDR exists on a VPN gateway connection
  api_instance.check_vpn_gateway_connection_local_cidr(version, generation, vpn_gateway_id, id, cidr_prefix, prefix_length)
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPNGatewaysApi->check_vpn_gateway_connection_local_cidr: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **vpn_gateway_id** | **String**| The VPN gateway identifier | 
 **id** | **String**| The VPN gateway connection identifier | 
 **cidr_prefix** | **String**| The address prefix part of the CIDR | 
 **prefix_length** | **String**| The prefix length part of the CIDR | 

### Return type

nil (empty response body)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## check_vpn_gateway_connection_peer_cidr

> check_vpn_gateway_connection_peer_cidr(version, generation, vpn_gateway_id, id, cidr_prefix, prefix_length)

Check if the specified peer CIDR exists on a VPN gateway connection

This request succeeds if a CIDR exists on the specified VPN gateway connection and fails otherwise.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPNGatewaysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
vpn_gateway_id = 'vpn_gateway_id_example' # String | The VPN gateway identifier
id = 'id_example' # String | The VPN gateway connection identifier
cidr_prefix = 'cidr_prefix_example' # String | The address prefix part of the CIDR
prefix_length = 'prefix_length_example' # String | The prefix length part of the CIDR

begin
  #Check if the specified peer CIDR exists on a VPN gateway connection
  api_instance.check_vpn_gateway_connection_peer_cidr(version, generation, vpn_gateway_id, id, cidr_prefix, prefix_length)
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPNGatewaysApi->check_vpn_gateway_connection_peer_cidr: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **vpn_gateway_id** | **String**| The VPN gateway identifier | 
 **id** | **String**| The VPN gateway connection identifier | 
 **cidr_prefix** | **String**| The address prefix part of the CIDR | 
 **prefix_length** | **String**| The prefix length part of the CIDR | 

### Return type

nil (empty response body)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_ike_policy

> IKEPolicy create_ike_policy(version, generation, ike_policy_prototype)

Create an IKE policy

This request creates a new IKE policy.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPNGatewaysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
ike_policy_prototype = IbmCloudVpc::IKEPolicyPrototype.new # IKEPolicyPrototype | The IKE policy prototype object.

begin
  #Create an IKE policy
  result = api_instance.create_ike_policy(version, generation, ike_policy_prototype)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPNGatewaysApi->create_ike_policy: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **ike_policy_prototype** | [**IKEPolicyPrototype**](IKEPolicyPrototype.md)| The IKE policy prototype object. | 

### Return type

[**IKEPolicy**](IKEPolicy.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_ipsec_policy

> IPsecPolicy create_ipsec_policy(version, generation, i_psec_policy_prototype)

Create an IPsec policy

This request creates a new IPsec policy.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPNGatewaysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
i_psec_policy_prototype = IbmCloudVpc::IPsecPolicyPrototype.new # IPsecPolicyPrototype | The IPsec policy prototype object.

begin
  #Create an IPsec policy
  result = api_instance.create_ipsec_policy(version, generation, i_psec_policy_prototype)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPNGatewaysApi->create_ipsec_policy: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **i_psec_policy_prototype** | [**IPsecPolicyPrototype**](IPsecPolicyPrototype.md)| The IPsec policy prototype object. | 

### Return type

[**IPsecPolicy**](IPsecPolicy.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_vpn_gateway

> VPNGateway create_vpn_gateway(version, generation, vpn_gateway_prototype)

Create a VPN gateway

This request creates a new VPN gateway.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPNGatewaysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
vpn_gateway_prototype = IbmCloudVpc::VPNGatewayPrototype.new # VPNGatewayPrototype | The VPN gateway prototype object.

begin
  #Create a VPN gateway
  result = api_instance.create_vpn_gateway(version, generation, vpn_gateway_prototype)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPNGatewaysApi->create_vpn_gateway: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **vpn_gateway_prototype** | [**VPNGatewayPrototype**](VPNGatewayPrototype.md)| The VPN gateway prototype object. | 

### Return type

[**VPNGateway**](VPNGateway.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_vpn_gateway_connection

> VPNGatewayConnection create_vpn_gateway_connection(version, generation, vpn_gateway_id, vpn_gateway_connection_prototype)

Create a VPN gateway connection

This request creates a new VPN gateway connection.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPNGatewaysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
vpn_gateway_id = 'vpn_gateway_id_example' # String | The VPN gateway identifier
vpn_gateway_connection_prototype = IbmCloudVpc::VPNGatewayConnectionPrototype.new # VPNGatewayConnectionPrototype | The VPN gateway connection prototype object.

begin
  #Create a VPN gateway connection
  result = api_instance.create_vpn_gateway_connection(version, generation, vpn_gateway_id, vpn_gateway_connection_prototype)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPNGatewaysApi->create_vpn_gateway_connection: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **vpn_gateway_id** | **String**| The VPN gateway identifier | 
 **vpn_gateway_connection_prototype** | [**VPNGatewayConnectionPrototype**](VPNGatewayConnectionPrototype.md)| The VPN gateway connection prototype object. | 

### Return type

[**VPNGatewayConnection**](VPNGatewayConnection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_ike_policy

> delete_ike_policy(version, generation, id)

Delete an IKE policy

This request deletes an IKE policy. This operation cannot be reversed.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPNGatewaysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The IKE policy identifier

begin
  #Delete an IKE policy
  api_instance.delete_ike_policy(version, generation, id)
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPNGatewaysApi->delete_ike_policy: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The IKE policy identifier | 

### Return type

nil (empty response body)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_ipsec_policy

> delete_ipsec_policy(version, generation, id)

Delete an IPsec policy

This request deletes an IPsec policy. This operation cannot be reversed.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPNGatewaysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The IPsec policy identifier

begin
  #Delete an IPsec policy
  api_instance.delete_ipsec_policy(version, generation, id)
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPNGatewaysApi->delete_ipsec_policy: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The IPsec policy identifier | 

### Return type

nil (empty response body)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_vpn_gateway

> delete_vpn_gateway(version, generation, id)

Delete a VPN gateway

This request deletes a VPN gateway. A VPN gateway with a `status` of `pending` cannot be deleted. This operation deletes all VPN gateway connections associated with this VPN gateway.  This operation cannot be reversed.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPNGatewaysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The VPN gateway identifier

begin
  #Delete a VPN gateway
  api_instance.delete_vpn_gateway(version, generation, id)
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPNGatewaysApi->delete_vpn_gateway: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The VPN gateway identifier | 

### Return type

nil (empty response body)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_vpn_gateway_connection

> delete_vpn_gateway_connection(version, generation, vpn_gateway_id, id)

Delete a VPN gateway connection

This request deletes a VPN gateway connection. This operation cannot be reversed.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPNGatewaysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
vpn_gateway_id = 'vpn_gateway_id_example' # String | The VPN gateway identifier
id = 'id_example' # String | The VPN gateway connection identifier

begin
  #Delete a VPN gateway connection
  api_instance.delete_vpn_gateway_connection(version, generation, vpn_gateway_id, id)
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPNGatewaysApi->delete_vpn_gateway_connection: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **vpn_gateway_id** | **String**| The VPN gateway identifier | 
 **id** | **String**| The VPN gateway connection identifier | 

### Return type

nil (empty response body)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ike_policy

> IKEPolicy get_ike_policy(version, generation, id)

Retrieve the specified IKE policy

This request retrieves a single IKE policy specified by the identifier in the URL.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPNGatewaysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The IKE policy identifier

begin
  #Retrieve the specified IKE policy
  result = api_instance.get_ike_policy(version, generation, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPNGatewaysApi->get_ike_policy: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The IKE policy identifier | 

### Return type

[**IKEPolicy**](IKEPolicy.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ipsec_policy

> IPsecPolicy get_ipsec_policy(version, generation, id)

Retrieve the specified IPsec policy

This request retrieves a single IPsec policy specified by the identifier in the URL.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPNGatewaysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The IPsec policy identifier

begin
  #Retrieve the specified IPsec policy
  result = api_instance.get_ipsec_policy(version, generation, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPNGatewaysApi->get_ipsec_policy: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The IPsec policy identifier | 

### Return type

[**IPsecPolicy**](IPsecPolicy.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_vpn_gateway

> VPNGateway get_vpn_gateway(version, generation, id)

Retrieve the specified VPN gateway

This request retrieves a single VPN gateway specified by the identifier in the URL.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPNGatewaysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The VPN gateway identifier

begin
  #Retrieve the specified VPN gateway
  result = api_instance.get_vpn_gateway(version, generation, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPNGatewaysApi->get_vpn_gateway: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The VPN gateway identifier | 

### Return type

[**VPNGateway**](VPNGateway.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_vpn_gateway_connection

> VPNGatewayConnection get_vpn_gateway_connection(version, generation, vpn_gateway_id, id)

Retrieve the specified VPN gateway connection

This request retrieves a single VPN gateway connection specified by the identifier in the URL.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPNGatewaysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
vpn_gateway_id = 'vpn_gateway_id_example' # String | The VPN gateway identifier
id = 'id_example' # String | The VPN gateway connection identifier

begin
  #Retrieve the specified VPN gateway connection
  result = api_instance.get_vpn_gateway_connection(version, generation, vpn_gateway_id, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPNGatewaysApi->get_vpn_gateway_connection: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **vpn_gateway_id** | **String**| The VPN gateway identifier | 
 **id** | **String**| The VPN gateway connection identifier | 

### Return type

[**VPNGatewayConnection**](VPNGatewayConnection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_ike_policies

> IKEPolicyCollection list_ike_policies(version, generation, opts)

List all IKE policies

This request retrieves a paginated list of all IKE policies that belong to this account.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPNGatewaysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
opts = {
  start: 'start_example', # String | A server-supplied token determining what resource to start the page on
  limit: 50 # Integer | The number of resources to return on a page
}

begin
  #List all IKE policies
  result = api_instance.list_ike_policies(version, generation, opts)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPNGatewaysApi->list_ike_policies: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **start** | **String**| A server-supplied token determining what resource to start the page on | [optional] 
 **limit** | **Integer**| The number of resources to return on a page | [optional] [default to 50]

### Return type

[**IKEPolicyCollection**](IKEPolicyCollection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_ike_policy_connections

> VPNGatewayConnectionCollection list_ike_policy_connections(version, generation, id)

List all connections that use the specified IKE policy

This request lists all the connections that use the specified policy.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPNGatewaysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The IKE policy identifier

begin
  #List all connections that use the specified IKE policy
  result = api_instance.list_ike_policy_connections(version, generation, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPNGatewaysApi->list_ike_policy_connections: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The IKE policy identifier | 

### Return type

[**VPNGatewayConnectionCollection**](VPNGatewayConnectionCollection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_ipsec_policies

> IPsecPolicyCollection list_ipsec_policies(version, generation, opts)

List all IPsec policies

This request retrieves a paginated list of all IPsec policies that belong to this account.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPNGatewaysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
opts = {
  start: 'start_example', # String | A server-supplied token determining what resource to start the page on
  limit: 50 # Integer | The number of resources to return on a page
}

begin
  #List all IPsec policies
  result = api_instance.list_ipsec_policies(version, generation, opts)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPNGatewaysApi->list_ipsec_policies: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **start** | **String**| A server-supplied token determining what resource to start the page on | [optional] 
 **limit** | **Integer**| The number of resources to return on a page | [optional] [default to 50]

### Return type

[**IPsecPolicyCollection**](IPsecPolicyCollection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_ipsec_policy_connections

> VPNGatewayConnectionCollection list_ipsec_policy_connections(version, generation, id)

List all connections that use the specified IPsec policy

This request lists all the connections that use the specified policy.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPNGatewaysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The IPsec policy identifier

begin
  #List all connections that use the specified IPsec policy
  result = api_instance.list_ipsec_policy_connections(version, generation, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPNGatewaysApi->list_ipsec_policy_connections: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The IPsec policy identifier | 

### Return type

[**VPNGatewayConnectionCollection**](VPNGatewayConnectionCollection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_vpn_gateway_connection_local_cidrs

> VPNGatewayConnectionLocalCIDRs list_vpn_gateway_connection_local_cidrs(version, generation, vpn_gateway_id, id)

List all local CIDRs for a VPN gateway connection

This request lists all local CIDRs for a VPN gateway connection specified by the identifier in the URL.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPNGatewaysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
vpn_gateway_id = 'vpn_gateway_id_example' # String | The VPN gateway identifier
id = 'id_example' # String | The VPN gateway connection identifier

begin
  #List all local CIDRs for a VPN gateway connection
  result = api_instance.list_vpn_gateway_connection_local_cidrs(version, generation, vpn_gateway_id, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPNGatewaysApi->list_vpn_gateway_connection_local_cidrs: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **vpn_gateway_id** | **String**| The VPN gateway identifier | 
 **id** | **String**| The VPN gateway connection identifier | 

### Return type

[**VPNGatewayConnectionLocalCIDRs**](VPNGatewayConnectionLocalCIDRs.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_vpn_gateway_connection_peer_cidrs

> VPNGatewayConnectionPeerCIDRs list_vpn_gateway_connection_peer_cidrs(version, generation, vpn_gateway_id, id)

List all peer CIDRs for a VPN gateway connection

This request lists all peer CIDRs for a VPN gateway connection specified by the identifier in the URL.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPNGatewaysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
vpn_gateway_id = 'vpn_gateway_id_example' # String | The VPN gateway identifier
id = 'id_example' # String | The VPN gateway connection identifier

begin
  #List all peer CIDRs for a VPN gateway connection
  result = api_instance.list_vpn_gateway_connection_peer_cidrs(version, generation, vpn_gateway_id, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPNGatewaysApi->list_vpn_gateway_connection_peer_cidrs: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **vpn_gateway_id** | **String**| The VPN gateway identifier | 
 **id** | **String**| The VPN gateway connection identifier | 

### Return type

[**VPNGatewayConnectionPeerCIDRs**](VPNGatewayConnectionPeerCIDRs.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_vpn_gateway_connections

> VPNGatewayConnectionCollection list_vpn_gateway_connections(version, generation, vpn_gateway_id, opts)

List all connections of a VPN gateway

This request lists all the connections of a particular VPN gateway.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPNGatewaysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
vpn_gateway_id = 'vpn_gateway_id_example' # String | The VPN gateway identifier
opts = {
  status: 'status_example' # String | Filters the collection to VPN gateway connections with the specified status
}

begin
  #List all connections of a VPN gateway
  result = api_instance.list_vpn_gateway_connections(version, generation, vpn_gateway_id, opts)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPNGatewaysApi->list_vpn_gateway_connections: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **vpn_gateway_id** | **String**| The VPN gateway identifier | 
 **status** | **String**| Filters the collection to VPN gateway connections with the specified status | [optional] 

### Return type

[**VPNGatewayConnectionCollection**](VPNGatewayConnectionCollection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_vpn_gateways

> VPNGatewayCollection list_vpn_gateways(version, generation, opts)

List all VPN gateways

This request retrieves a paginated list of all VPN gateways that belong to this account.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPNGatewaysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
opts = {
  start: 'start_example', # String | A server-supplied token determining what resource to start the page on
  limit: 50, # Integer | The number of resources to return on a page
  resource_group_id: 'resource_group_id_example' # String | Filters the collection to resources within one of the resource groups identified in a comma-separated list of resource group identifiers
}

begin
  #List all VPN gateways
  result = api_instance.list_vpn_gateways(version, generation, opts)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPNGatewaysApi->list_vpn_gateways: #{e}"
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

[**VPNGatewayCollection**](VPNGatewayCollection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_vpn_gateway_connection_local_cidr

> remove_vpn_gateway_connection_local_cidr(version, generation, vpn_gateway_id, id, cidr_prefix, prefix_length)

Remove a local CIDR from a VPN gateway connection

This request removes a CIDR from a VPN gateway connection.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPNGatewaysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
vpn_gateway_id = 'vpn_gateway_id_example' # String | The VPN gateway identifier
id = 'id_example' # String | The VPN gateway connection identifier
cidr_prefix = 'cidr_prefix_example' # String | The address prefix part of the CIDR
prefix_length = 'prefix_length_example' # String | The prefix length part of the CIDR

begin
  #Remove a local CIDR from a VPN gateway connection
  api_instance.remove_vpn_gateway_connection_local_cidr(version, generation, vpn_gateway_id, id, cidr_prefix, prefix_length)
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPNGatewaysApi->remove_vpn_gateway_connection_local_cidr: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **vpn_gateway_id** | **String**| The VPN gateway identifier | 
 **id** | **String**| The VPN gateway connection identifier | 
 **cidr_prefix** | **String**| The address prefix part of the CIDR | 
 **prefix_length** | **String**| The prefix length part of the CIDR | 

### Return type

nil (empty response body)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_vpn_gateway_connection_peer_cidr

> remove_vpn_gateway_connection_peer_cidr(version, generation, vpn_gateway_id, id, cidr_prefix, prefix_length)

Remove a peer CIDR from a VPN gateway connection

This request removes a CIDR from a VPN gateway connection.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPNGatewaysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
vpn_gateway_id = 'vpn_gateway_id_example' # String | The VPN gateway identifier
id = 'id_example' # String | The VPN gateway connection identifier
cidr_prefix = 'cidr_prefix_example' # String | The address prefix part of the CIDR
prefix_length = 'prefix_length_example' # String | The prefix length part of the CIDR

begin
  #Remove a peer CIDR from a VPN gateway connection
  api_instance.remove_vpn_gateway_connection_peer_cidr(version, generation, vpn_gateway_id, id, cidr_prefix, prefix_length)
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPNGatewaysApi->remove_vpn_gateway_connection_peer_cidr: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **vpn_gateway_id** | **String**| The VPN gateway identifier | 
 **id** | **String**| The VPN gateway connection identifier | 
 **cidr_prefix** | **String**| The address prefix part of the CIDR | 
 **prefix_length** | **String**| The prefix length part of the CIDR | 

### Return type

nil (empty response body)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_ike_policy

> IKEPolicy update_ike_policy(version, generation, id, ike_policy_patch)

Update an IKE policy

This request updates the properties of an existing IKE policy.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPNGatewaysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The IKE policy identifier
ike_policy_patch = IbmCloudVpc::IKEPolicyPatch.new # IKEPolicyPatch | The IKE policy patch.

begin
  #Update an IKE policy
  result = api_instance.update_ike_policy(version, generation, id, ike_policy_patch)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPNGatewaysApi->update_ike_policy: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The IKE policy identifier | 
 **ike_policy_patch** | [**IKEPolicyPatch**](IKEPolicyPatch.md)| The IKE policy patch. | 

### Return type

[**IKEPolicy**](IKEPolicy.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_ipsec_policy

> IPsecPolicy update_ipsec_policy(version, generation, id, i_psec_policy_patch)

Update an IPsec policy

This request updates the properties of an existing IPsec policy.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPNGatewaysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The IPsec policy identifier
i_psec_policy_patch = IbmCloudVpc::IPsecPolicyPatch.new # IPsecPolicyPatch | The IPsec policy patch.

begin
  #Update an IPsec policy
  result = api_instance.update_ipsec_policy(version, generation, id, i_psec_policy_patch)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPNGatewaysApi->update_ipsec_policy: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The IPsec policy identifier | 
 **i_psec_policy_patch** | [**IPsecPolicyPatch**](IPsecPolicyPatch.md)| The IPsec policy patch. | 

### Return type

[**IPsecPolicy**](IPsecPolicy.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_vpn_gateway

> VPNGateway update_vpn_gateway(version, generation, id, vpn_gateway_patch)

Update a VPN gateway

This request updates the properties of an existing VPN gateway.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPNGatewaysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The VPN gateway identifier
vpn_gateway_patch = IbmCloudVpc::VPNGatewayPatch.new # VPNGatewayPatch | The VPN gateway patch.

begin
  #Update a VPN gateway
  result = api_instance.update_vpn_gateway(version, generation, id, vpn_gateway_patch)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPNGatewaysApi->update_vpn_gateway: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The VPN gateway identifier | 
 **vpn_gateway_patch** | [**VPNGatewayPatch**](VPNGatewayPatch.md)| The VPN gateway patch. | 

### Return type

[**VPNGateway**](VPNGateway.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_vpn_gateway_connection

> VPNGatewayConnection update_vpn_gateway_connection(version, generation, vpn_gateway_id, id, vpn_gateway_connection_patch)

Update a VPN gateway connection

This request updates the properties of an existing VPN gateway connection.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::VPNGatewaysApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
vpn_gateway_id = 'vpn_gateway_id_example' # String | The VPN gateway identifier
id = 'id_example' # String | The VPN gateway connection identifier
vpn_gateway_connection_patch = IbmCloudVpc::VPNGatewayConnectionPatch.new # VPNGatewayConnectionPatch | The VPN gateway connection patch.

begin
  #Update a VPN gateway connection
  result = api_instance.update_vpn_gateway_connection(version, generation, vpn_gateway_id, id, vpn_gateway_connection_patch)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling VPNGatewaysApi->update_vpn_gateway_connection: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **vpn_gateway_id** | **String**| The VPN gateway identifier | 
 **id** | **String**| The VPN gateway connection identifier | 
 **vpn_gateway_connection_patch** | [**VPNGatewayConnectionPatch**](VPNGatewayConnectionPatch.md)| The VPN gateway connection patch. | 

### Return type

[**VPNGatewayConnection**](VPNGatewayConnection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

