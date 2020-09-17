# IbmCloudVpc::LoadBalancersApi

All URIs are relative to *https://us-south.iaas.cloud.ibm.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_load_balancer**](LoadBalancersApi.md#create_load_balancer) | **POST** /load_balancers | Create and provision a load balancer
[**create_load_balancer_listener**](LoadBalancersApi.md#create_load_balancer_listener) | **POST** /load_balancers/{load_balancer_id}/listeners | Create a listener
[**create_load_balancer_listener_policy**](LoadBalancersApi.md#create_load_balancer_listener_policy) | **POST** /load_balancers/{load_balancer_id}/listeners/{listener_id}/policies | Create a policy for the load balancer listener
[**create_load_balancer_listener_policy_rule**](LoadBalancersApi.md#create_load_balancer_listener_policy_rule) | **POST** /load_balancers/{load_balancer_id}/listeners/{listener_id}/policies/{policy_id}/rules | Create a rule for the load balancer listener policy
[**create_load_balancer_pool**](LoadBalancersApi.md#create_load_balancer_pool) | **POST** /load_balancers/{load_balancer_id}/pools | Create a load balancer pool
[**create_load_balancer_pool_member**](LoadBalancersApi.md#create_load_balancer_pool_member) | **POST** /load_balancers/{load_balancer_id}/pools/{pool_id}/members | Create a member in the load balancer pool
[**delete_load_balancer**](LoadBalancersApi.md#delete_load_balancer) | **DELETE** /load_balancers/{id} | Delete a load balancer
[**delete_load_balancer_listener**](LoadBalancersApi.md#delete_load_balancer_listener) | **DELETE** /load_balancers/{load_balancer_id}/listeners/{id} | Delete a listener
[**delete_load_balancer_listener_policy**](LoadBalancersApi.md#delete_load_balancer_listener_policy) | **DELETE** /load_balancers/{load_balancer_id}/listeners/{listener_id}/policies/{id} | Delete a policy of the load balancer listener
[**delete_load_balancer_listener_policy_rule**](LoadBalancersApi.md#delete_load_balancer_listener_policy_rule) | **DELETE** /load_balancers/{load_balancer_id}/listeners/{listener_id}/policies/{policy_id}/rules/{id} | Delete a rule from the load balancer listener policy
[**delete_load_balancer_pool**](LoadBalancersApi.md#delete_load_balancer_pool) | **DELETE** /load_balancers/{load_balancer_id}/pools/{id} | Delete a pool
[**delete_load_balancer_pool_member**](LoadBalancersApi.md#delete_load_balancer_pool_member) | **DELETE** /load_balancers/{load_balancer_id}/pools/{pool_id}/members/{id} | Delete a member from the load balancer pool
[**get_load_balancer**](LoadBalancersApi.md#get_load_balancer) | **GET** /load_balancers/{id} | Retrieve a load balancer
[**get_load_balancer_listener**](LoadBalancersApi.md#get_load_balancer_listener) | **GET** /load_balancers/{load_balancer_id}/listeners/{id} | Retrieve a listener
[**get_load_balancer_listener_policy**](LoadBalancersApi.md#get_load_balancer_listener_policy) | **GET** /load_balancers/{load_balancer_id}/listeners/{listener_id}/policies/{id} | Retrieve a policy of the load balancer listener
[**get_load_balancer_listener_policy_rule**](LoadBalancersApi.md#get_load_balancer_listener_policy_rule) | **GET** /load_balancers/{load_balancer_id}/listeners/{listener_id}/policies/{policy_id}/rules/{id} | Retrieve a rule of the load balancer listener policy
[**get_load_balancer_pool**](LoadBalancersApi.md#get_load_balancer_pool) | **GET** /load_balancers/{load_balancer_id}/pools/{id} | Retrieve a load balancer pool
[**get_load_balancer_pool_member**](LoadBalancersApi.md#get_load_balancer_pool_member) | **GET** /load_balancers/{load_balancer_id}/pools/{pool_id}/members/{id} | Retrieve a member in the load balancer pool
[**get_load_balancer_profile**](LoadBalancersApi.md#get_load_balancer_profile) | **GET** /load_balancer/profiles/{name} | Retrieve specified load balancer profile
[**get_load_balancer_statistics**](LoadBalancersApi.md#get_load_balancer_statistics) | **GET** /load_balancers/{id}/statistics | List statistics of a load balancer
[**list_load_balancer_listener_policies**](LoadBalancersApi.md#list_load_balancer_listener_policies) | **GET** /load_balancers/{load_balancer_id}/listeners/{listener_id}/policies | List all policies of the load balancer listener
[**list_load_balancer_listener_policy_rules**](LoadBalancersApi.md#list_load_balancer_listener_policy_rules) | **GET** /load_balancers/{load_balancer_id}/listeners/{listener_id}/policies/{policy_id}/rules | List all rules of the load balancer listener policy
[**list_load_balancer_listeners**](LoadBalancersApi.md#list_load_balancer_listeners) | **GET** /load_balancers/{load_balancer_id}/listeners | List all listeners of the load balancer
[**list_load_balancer_pool_members**](LoadBalancersApi.md#list_load_balancer_pool_members) | **GET** /load_balancers/{load_balancer_id}/pools/{pool_id}/members | List all members of the load balancer pool
[**list_load_balancer_pools**](LoadBalancersApi.md#list_load_balancer_pools) | **GET** /load_balancers/{load_balancer_id}/pools | List all pools of the load balancer
[**list_load_balancer_profiles**](LoadBalancersApi.md#list_load_balancer_profiles) | **GET** /load_balancer/profiles | List all load balancer profiles
[**list_load_balancers**](LoadBalancersApi.md#list_load_balancers) | **GET** /load_balancers | List all load balancers
[**replace_load_balancer_pool_members**](LoadBalancersApi.md#replace_load_balancer_pool_members) | **PUT** /load_balancers/{load_balancer_id}/pools/{pool_id}/members | Update members of the load balancer pool
[**update_load_balancer**](LoadBalancersApi.md#update_load_balancer) | **PATCH** /load_balancers/{id} | Update a load balancer
[**update_load_balancer_listener**](LoadBalancersApi.md#update_load_balancer_listener) | **PATCH** /load_balancers/{load_balancer_id}/listeners/{id} | Update a listener
[**update_load_balancer_listener_policy**](LoadBalancersApi.md#update_load_balancer_listener_policy) | **PATCH** /load_balancers/{load_balancer_id}/listeners/{listener_id}/policies/{id} | Update a policy of the load balancer listener
[**update_load_balancer_listener_policy_rule**](LoadBalancersApi.md#update_load_balancer_listener_policy_rule) | **PATCH** /load_balancers/{load_balancer_id}/listeners/{listener_id}/policies/{policy_id}/rules/{id} | Update a rule of the load balancer listener policy
[**update_load_balancer_pool**](LoadBalancersApi.md#update_load_balancer_pool) | **PATCH** /load_balancers/{load_balancer_id}/pools/{id} | Update a load balancer pool
[**update_load_balancer_pool_member**](LoadBalancersApi.md#update_load_balancer_pool_member) | **PATCH** /load_balancers/{load_balancer_id}/pools/{pool_id}/members/{id} | Update a member in the load balancer pool



## create_load_balancer

> LoadBalancer create_load_balancer(version, generation, load_balancer_prototype)

Create and provision a load balancer

This request creates and provisions a new load balancer.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::LoadBalancersApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
load_balancer_prototype = IbmCloudVpc::LoadBalancerPrototype.new # LoadBalancerPrototype | The load balancer prototype object

begin
  #Create and provision a load balancer
  result = api_instance.create_load_balancer(version, generation, load_balancer_prototype)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling LoadBalancersApi->create_load_balancer: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **load_balancer_prototype** | [**LoadBalancerPrototype**](LoadBalancerPrototype.md)| The load balancer prototype object | 

### Return type

[**LoadBalancer**](LoadBalancer.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_load_balancer_listener

> LoadBalancerListener create_load_balancer_listener(version, generation, load_balancer_id, load_balancer_listener_prototype)

Create a listener

This request creates a new listener to the load balancer.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::LoadBalancersApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
load_balancer_id = 'load_balancer_id_example' # String | The load balancer identifier
load_balancer_listener_prototype = IbmCloudVpc::LoadBalancerListenerPrototype.new # LoadBalancerListenerPrototype | The load balancer listener prototype object

begin
  #Create a listener
  result = api_instance.create_load_balancer_listener(version, generation, load_balancer_id, load_balancer_listener_prototype)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling LoadBalancersApi->create_load_balancer_listener: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **load_balancer_id** | **String**| The load balancer identifier | 
 **load_balancer_listener_prototype** | [**LoadBalancerListenerPrototype**](LoadBalancerListenerPrototype.md)| The load balancer listener prototype object | 

### Return type

[**LoadBalancerListener**](LoadBalancerListener.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_load_balancer_listener_policy

> LoadBalancerListenerPolicy create_load_balancer_listener_policy(version, generation, load_balancer_id, listener_id, load_balancer_listener_policy_prototype)

Create a policy for the load balancer listener

Creates a new policy to the load balancer listener.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::LoadBalancersApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
load_balancer_id = 'load_balancer_id_example' # String | The load balancer identifier
listener_id = 'listener_id_example' # String | The listener identifier
load_balancer_listener_policy_prototype = IbmCloudVpc::LoadBalancerListenerPolicyPrototype.new # LoadBalancerListenerPolicyPrototype | The listener policy prototype object

begin
  #Create a policy for the load balancer listener
  result = api_instance.create_load_balancer_listener_policy(version, generation, load_balancer_id, listener_id, load_balancer_listener_policy_prototype)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling LoadBalancersApi->create_load_balancer_listener_policy: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **load_balancer_id** | **String**| The load balancer identifier | 
 **listener_id** | **String**| The listener identifier | 
 **load_balancer_listener_policy_prototype** | [**LoadBalancerListenerPolicyPrototype**](LoadBalancerListenerPolicyPrototype.md)| The listener policy prototype object | 

### Return type

[**LoadBalancerListenerPolicy**](LoadBalancerListenerPolicy.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_load_balancer_listener_policy_rule

> LoadBalancerListenerPolicyRule create_load_balancer_listener_policy_rule(version, generation, load_balancer_id, listener_id, policy_id, load_balancer_listener_policy_rule_prototype)

Create a rule for the load balancer listener policy

Creates a new rule for the load balancer listener policy.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::LoadBalancersApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
load_balancer_id = 'load_balancer_id_example' # String | The load balancer identifier
listener_id = 'listener_id_example' # String | The listener identifier
policy_id = 'policy_id_example' # String | The policy identifier
load_balancer_listener_policy_rule_prototype = IbmCloudVpc::LoadBalancerListenerPolicyRulePrototype.new # LoadBalancerListenerPolicyRulePrototype | The listener policy rule prototype object

begin
  #Create a rule for the load balancer listener policy
  result = api_instance.create_load_balancer_listener_policy_rule(version, generation, load_balancer_id, listener_id, policy_id, load_balancer_listener_policy_rule_prototype)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling LoadBalancersApi->create_load_balancer_listener_policy_rule: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **load_balancer_id** | **String**| The load balancer identifier | 
 **listener_id** | **String**| The listener identifier | 
 **policy_id** | **String**| The policy identifier | 
 **load_balancer_listener_policy_rule_prototype** | [**LoadBalancerListenerPolicyRulePrototype**](LoadBalancerListenerPolicyRulePrototype.md)| The listener policy rule prototype object | 

### Return type

[**LoadBalancerListenerPolicyRule**](LoadBalancerListenerPolicyRule.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_load_balancer_pool

> LoadBalancerPool create_load_balancer_pool(version, generation, load_balancer_id, load_balancer_pool_prototype)

Create a load balancer pool

This request creates a new pool from a pool prototype object.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::LoadBalancersApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
load_balancer_id = 'load_balancer_id_example' # String | The load balancer identifier
load_balancer_pool_prototype = IbmCloudVpc::LoadBalancerPoolPrototype.new # LoadBalancerPoolPrototype | The load balancer pool prototype object.

begin
  #Create a load balancer pool
  result = api_instance.create_load_balancer_pool(version, generation, load_balancer_id, load_balancer_pool_prototype)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling LoadBalancersApi->create_load_balancer_pool: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **load_balancer_id** | **String**| The load balancer identifier | 
 **load_balancer_pool_prototype** | [**LoadBalancerPoolPrototype**](LoadBalancerPoolPrototype.md)| The load balancer pool prototype object. | 

### Return type

[**LoadBalancerPool**](LoadBalancerPool.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_load_balancer_pool_member

> LoadBalancerPoolMember create_load_balancer_pool_member(version, generation, load_balancer_id, pool_id, load_balancer_pool_member_prototype)

Create a member in the load balancer pool

This request creates a new member and adds the member to the pool.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::LoadBalancersApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
load_balancer_id = 'load_balancer_id_example' # String | The load balancer identifier
pool_id = 'pool_id_example' # String | The pool identifier
load_balancer_pool_member_prototype = IbmCloudVpc::LoadBalancerPoolMemberPrototype.new # LoadBalancerPoolMemberPrototype | The prototype object for a new load balancer pool member. For load balancers in the `network` family, the same `port` and `target` tuple cannot be shared by a member of Any other load balancer.

begin
  #Create a member in the load balancer pool
  result = api_instance.create_load_balancer_pool_member(version, generation, load_balancer_id, pool_id, load_balancer_pool_member_prototype)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling LoadBalancersApi->create_load_balancer_pool_member: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **load_balancer_id** | **String**| The load balancer identifier | 
 **pool_id** | **String**| The pool identifier | 
 **load_balancer_pool_member_prototype** | [**LoadBalancerPoolMemberPrototype**](LoadBalancerPoolMemberPrototype.md)| The prototype object for a new load balancer pool member. For load balancers in the &#x60;network&#x60; family, the same &#x60;port&#x60; and &#x60;target&#x60; tuple cannot be shared by a member of Any other load balancer. | 

### Return type

[**LoadBalancerPoolMember**](LoadBalancerPoolMember.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_load_balancer

> delete_load_balancer(version, generation, id)

Delete a load balancer

This request deletes a load balancer. This operation cannot be reversed.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::LoadBalancersApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The load balancer identifier

begin
  #Delete a load balancer
  api_instance.delete_load_balancer(version, generation, id)
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling LoadBalancersApi->delete_load_balancer: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The load balancer identifier | 

### Return type

nil (empty response body)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_load_balancer_listener

> delete_load_balancer_listener(version, generation, load_balancer_id, id)

Delete a listener

This request deletes a load balancer listener. This operation cannot be reversed.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::LoadBalancersApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
load_balancer_id = 'load_balancer_id_example' # String | The load balancer identifier
id = 'id_example' # String | The listener identifier

begin
  #Delete a listener
  api_instance.delete_load_balancer_listener(version, generation, load_balancer_id, id)
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling LoadBalancersApi->delete_load_balancer_listener: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **load_balancer_id** | **String**| The load balancer identifier | 
 **id** | **String**| The listener identifier | 

### Return type

nil (empty response body)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_load_balancer_listener_policy

> delete_load_balancer_listener_policy(version, generation, load_balancer_id, listener_id, id)

Delete a policy of the load balancer listener

Deletes a policy of the load balancer listener. This operation cannot be reversed.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::LoadBalancersApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
load_balancer_id = 'load_balancer_id_example' # String | The load balancer identifier
listener_id = 'listener_id_example' # String | The listener identifier
id = 'id_example' # String | The policy identifier

begin
  #Delete a policy of the load balancer listener
  api_instance.delete_load_balancer_listener_policy(version, generation, load_balancer_id, listener_id, id)
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling LoadBalancersApi->delete_load_balancer_listener_policy: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **load_balancer_id** | **String**| The load balancer identifier | 
 **listener_id** | **String**| The listener identifier | 
 **id** | **String**| The policy identifier | 

### Return type

nil (empty response body)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_load_balancer_listener_policy_rule

> delete_load_balancer_listener_policy_rule(version, generation, load_balancer_id, listener_id, policy_id, id)

Delete a rule from the load balancer listener policy

Deletes a rule from the load balancer listener policy. This operation cannot be reversed.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::LoadBalancersApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
load_balancer_id = 'load_balancer_id_example' # String | The load balancer identifier
listener_id = 'listener_id_example' # String | The listener identifier
policy_id = 'policy_id_example' # String | The policy identifier
id = 'id_example' # String | The rule identifier

begin
  #Delete a rule from the load balancer listener policy
  api_instance.delete_load_balancer_listener_policy_rule(version, generation, load_balancer_id, listener_id, policy_id, id)
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling LoadBalancersApi->delete_load_balancer_listener_policy_rule: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **load_balancer_id** | **String**| The load balancer identifier | 
 **listener_id** | **String**| The listener identifier | 
 **policy_id** | **String**| The policy identifier | 
 **id** | **String**| The rule identifier | 

### Return type

nil (empty response body)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_load_balancer_pool

> delete_load_balancer_pool(version, generation, load_balancer_id, id)

Delete a pool

This request deletes a load balancer pool. This operation cannot be reversed.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::LoadBalancersApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
load_balancer_id = 'load_balancer_id_example' # String | The load balancer identifier
id = 'id_example' # String | The pool identifier

begin
  #Delete a pool
  api_instance.delete_load_balancer_pool(version, generation, load_balancer_id, id)
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling LoadBalancersApi->delete_load_balancer_pool: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **load_balancer_id** | **String**| The load balancer identifier | 
 **id** | **String**| The pool identifier | 

### Return type

nil (empty response body)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_load_balancer_pool_member

> delete_load_balancer_pool_member(version, generation, load_balancer_id, pool_id, id)

Delete a member from the load balancer pool

This request deletes a member from the pool. This operation cannot be reversed.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::LoadBalancersApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
load_balancer_id = 'load_balancer_id_example' # String | The load balancer identifier
pool_id = 'pool_id_example' # String | The pool identifier
id = 'id_example' # String | The member identifier

begin
  #Delete a member from the load balancer pool
  api_instance.delete_load_balancer_pool_member(version, generation, load_balancer_id, pool_id, id)
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling LoadBalancersApi->delete_load_balancer_pool_member: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **load_balancer_id** | **String**| The load balancer identifier | 
 **pool_id** | **String**| The pool identifier | 
 **id** | **String**| The member identifier | 

### Return type

nil (empty response body)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_load_balancer

> LoadBalancer get_load_balancer(version, generation, id)

Retrieve a load balancer

This request retrieves a single load balancer specified by the identifier in the URL path.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::LoadBalancersApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The load balancer identifier

begin
  #Retrieve a load balancer
  result = api_instance.get_load_balancer(version, generation, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling LoadBalancersApi->get_load_balancer: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The load balancer identifier | 

### Return type

[**LoadBalancer**](LoadBalancer.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_load_balancer_listener

> LoadBalancerListener get_load_balancer_listener(version, generation, load_balancer_id, id)

Retrieve a listener

This request retrieves a single listener specified by the identifier in the URL path.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::LoadBalancersApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
load_balancer_id = 'load_balancer_id_example' # String | The load balancer identifier
id = 'id_example' # String | The listener identifier

begin
  #Retrieve a listener
  result = api_instance.get_load_balancer_listener(version, generation, load_balancer_id, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling LoadBalancersApi->get_load_balancer_listener: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **load_balancer_id** | **String**| The load balancer identifier | 
 **id** | **String**| The listener identifier | 

### Return type

[**LoadBalancerListener**](LoadBalancerListener.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_load_balancer_listener_policy

> LoadBalancerListenerPolicy get_load_balancer_listener_policy(version, generation, load_balancer_id, listener_id, id)

Retrieve a policy of the load balancer listener

Retrieve a single policy specified by the identifier in the URL path.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::LoadBalancersApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
load_balancer_id = 'load_balancer_id_example' # String | The load balancer identifier
listener_id = 'listener_id_example' # String | The listener identifier
id = 'id_example' # String | The policy identifier

begin
  #Retrieve a policy of the load balancer listener
  result = api_instance.get_load_balancer_listener_policy(version, generation, load_balancer_id, listener_id, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling LoadBalancersApi->get_load_balancer_listener_policy: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **load_balancer_id** | **String**| The load balancer identifier | 
 **listener_id** | **String**| The listener identifier | 
 **id** | **String**| The policy identifier | 

### Return type

[**LoadBalancerListenerPolicy**](LoadBalancerListenerPolicy.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_load_balancer_listener_policy_rule

> LoadBalancerListenerPolicyRule get_load_balancer_listener_policy_rule(version, generation, load_balancer_id, listener_id, policy_id, id)

Retrieve a rule of the load balancer listener policy

Retrieves a single rule specified by the identifier in the URL path.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::LoadBalancersApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
load_balancer_id = 'load_balancer_id_example' # String | The load balancer identifier
listener_id = 'listener_id_example' # String | The listener identifier
policy_id = 'policy_id_example' # String | The policy identifier
id = 'id_example' # String | The rule identifier

begin
  #Retrieve a rule of the load balancer listener policy
  result = api_instance.get_load_balancer_listener_policy_rule(version, generation, load_balancer_id, listener_id, policy_id, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling LoadBalancersApi->get_load_balancer_listener_policy_rule: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **load_balancer_id** | **String**| The load balancer identifier | 
 **listener_id** | **String**| The listener identifier | 
 **policy_id** | **String**| The policy identifier | 
 **id** | **String**| The rule identifier | 

### Return type

[**LoadBalancerListenerPolicyRule**](LoadBalancerListenerPolicyRule.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_load_balancer_pool

> LoadBalancerPool get_load_balancer_pool(version, generation, load_balancer_id, id)

Retrieve a load balancer pool

This request retrieves a single pool specified by the identifier in the URL path.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::LoadBalancersApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
load_balancer_id = 'load_balancer_id_example' # String | The load balancer identifier
id = 'id_example' # String | The pool identifier

begin
  #Retrieve a load balancer pool
  result = api_instance.get_load_balancer_pool(version, generation, load_balancer_id, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling LoadBalancersApi->get_load_balancer_pool: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **load_balancer_id** | **String**| The load balancer identifier | 
 **id** | **String**| The pool identifier | 

### Return type

[**LoadBalancerPool**](LoadBalancerPool.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_load_balancer_pool_member

> LoadBalancerPoolMember get_load_balancer_pool_member(version, generation, load_balancer_id, pool_id, id)

Retrieve a member in the load balancer pool

This request retrieves a single member specified by the identifier in the URL path.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::LoadBalancersApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
load_balancer_id = 'load_balancer_id_example' # String | The load balancer identifier
pool_id = 'pool_id_example' # String | The pool identifier
id = 'id_example' # String | The member identifier

begin
  #Retrieve a member in the load balancer pool
  result = api_instance.get_load_balancer_pool_member(version, generation, load_balancer_id, pool_id, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling LoadBalancersApi->get_load_balancer_pool_member: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **load_balancer_id** | **String**| The load balancer identifier | 
 **pool_id** | **String**| The pool identifier | 
 **id** | **String**| The member identifier | 

### Return type

[**LoadBalancerPoolMember**](LoadBalancerPoolMember.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_load_balancer_profile

> LoadBalancerProfile get_load_balancer_profile(version, generation, name)

Retrieve specified load balancer profile

This request retrieves a load balancer profile specified by the name in the URL.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::LoadBalancersApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
name = 'name_example' # String | The load balancer profile name

begin
  #Retrieve specified load balancer profile
  result = api_instance.get_load_balancer_profile(version, generation, name)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling LoadBalancersApi->get_load_balancer_profile: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **name** | **String**| The load balancer profile name | 

### Return type

[**LoadBalancerProfile**](LoadBalancerProfile.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_load_balancer_statistics

> LoadBalancerStatistics get_load_balancer_statistics(version, generation, id)

List statistics of a load balancer

This request lists statistics of a load balancer specified by the identifier in the URL path.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::LoadBalancersApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The load balancer identifier

begin
  #List statistics of a load balancer
  result = api_instance.get_load_balancer_statistics(version, generation, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling LoadBalancersApi->get_load_balancer_statistics: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The load balancer identifier | 

### Return type

[**LoadBalancerStatistics**](LoadBalancerStatistics.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_load_balancer_listener_policies

> LoadBalancerListenerPolicyCollection list_load_balancer_listener_policies(version, generation, load_balancer_id, listener_id)

List all policies of the load balancer listener

Retrieves a list of all policies belonging to the load balancer listener.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::LoadBalancersApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
load_balancer_id = 'load_balancer_id_example' # String | The load balancer identifier
listener_id = 'listener_id_example' # String | The listener identifier

begin
  #List all policies of the load balancer listener
  result = api_instance.list_load_balancer_listener_policies(version, generation, load_balancer_id, listener_id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling LoadBalancersApi->list_load_balancer_listener_policies: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **load_balancer_id** | **String**| The load balancer identifier | 
 **listener_id** | **String**| The listener identifier | 

### Return type

[**LoadBalancerListenerPolicyCollection**](LoadBalancerListenerPolicyCollection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_load_balancer_listener_policy_rules

> LoadBalancerListenerPolicyRuleCollection list_load_balancer_listener_policy_rules(version, generation, load_balancer_id, listener_id, policy_id)

List all rules of the load balancer listener policy

Retrieves a list of all rules belonging to the load balancer listener policy.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::LoadBalancersApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
load_balancer_id = 'load_balancer_id_example' # String | The load balancer identifier
listener_id = 'listener_id_example' # String | The listener identifier
policy_id = 'policy_id_example' # String | The policy identifier

begin
  #List all rules of the load balancer listener policy
  result = api_instance.list_load_balancer_listener_policy_rules(version, generation, load_balancer_id, listener_id, policy_id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling LoadBalancersApi->list_load_balancer_listener_policy_rules: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **load_balancer_id** | **String**| The load balancer identifier | 
 **listener_id** | **String**| The listener identifier | 
 **policy_id** | **String**| The policy identifier | 

### Return type

[**LoadBalancerListenerPolicyRuleCollection**](LoadBalancerListenerPolicyRuleCollection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_load_balancer_listeners

> LoadBalancerListenerCollection list_load_balancer_listeners(version, generation, load_balancer_id)

List all listeners of the load balancer

This request retrieves a list of all listeners that belong to the load balancer.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::LoadBalancersApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
load_balancer_id = 'load_balancer_id_example' # String | The load balancer identifier

begin
  #List all listeners of the load balancer
  result = api_instance.list_load_balancer_listeners(version, generation, load_balancer_id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling LoadBalancersApi->list_load_balancer_listeners: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **load_balancer_id** | **String**| The load balancer identifier | 

### Return type

[**LoadBalancerListenerCollection**](LoadBalancerListenerCollection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_load_balancer_pool_members

> LoadBalancerPoolMemberCollection list_load_balancer_pool_members(version, generation, load_balancer_id, pool_id)

List all members of the load balancer pool

This request retrieves a paginated list of all members that belong to the pool.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::LoadBalancersApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
load_balancer_id = 'load_balancer_id_example' # String | The load balancer identifier
pool_id = 'pool_id_example' # String | The pool identifier

begin
  #List all members of the load balancer pool
  result = api_instance.list_load_balancer_pool_members(version, generation, load_balancer_id, pool_id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling LoadBalancersApi->list_load_balancer_pool_members: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **load_balancer_id** | **String**| The load balancer identifier | 
 **pool_id** | **String**| The pool identifier | 

### Return type

[**LoadBalancerPoolMemberCollection**](LoadBalancerPoolMemberCollection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_load_balancer_pools

> LoadBalancerPoolCollection list_load_balancer_pools(version, generation, load_balancer_id)

List all pools of the load balancer

This request lists all pools that belong to the load balancer.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::LoadBalancersApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
load_balancer_id = 'load_balancer_id_example' # String | The load balancer identifier

begin
  #List all pools of the load balancer
  result = api_instance.list_load_balancer_pools(version, generation, load_balancer_id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling LoadBalancersApi->list_load_balancer_pools: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **load_balancer_id** | **String**| The load balancer identifier | 

### Return type

[**LoadBalancerPoolCollection**](LoadBalancerPoolCollection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_load_balancer_profiles

> LoadBalancerProfileCollection list_load_balancer_profiles(version, generation, opts)

List all load balancer profiles

This request lists all load balancer profiles available in the region. A load balancer profile specifies the performance characteristics and pricing model for a load balancer.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::LoadBalancersApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
opts = {
  start: 'start_example', # String | A server-supplied token determining what resource to start the page on
  limit: 50 # Integer | The number of resources to return on a page
}

begin
  #List all load balancer profiles
  result = api_instance.list_load_balancer_profiles(version, generation, opts)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling LoadBalancersApi->list_load_balancer_profiles: #{e}"
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

[**LoadBalancerProfileCollection**](LoadBalancerProfileCollection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_load_balancers

> LoadBalancerCollection list_load_balancers(version, generation)

List all load balancers

This request retrieves a paginated list of all load balancers that belong to this account.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::LoadBalancersApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.

begin
  #List all load balancers
  result = api_instance.list_load_balancers(version, generation)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling LoadBalancersApi->list_load_balancers: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 

### Return type

[**LoadBalancerCollection**](LoadBalancerCollection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## replace_load_balancer_pool_members

> LoadBalancerPoolMemberCollection replace_load_balancer_pool_members(version, generation, load_balancer_id, pool_id, load_balancer_pool_member_collection_prototype)

Update members of the load balancer pool

This request updates members of the load balancer pool from a collection of member prototype objects.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::LoadBalancersApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
load_balancer_id = 'load_balancer_id_example' # String | The load balancer identifier
pool_id = 'pool_id_example' # String | The pool identifier
load_balancer_pool_member_collection_prototype = IbmCloudVpc::LoadBalancerPoolMemberCollectionPrototype.new # LoadBalancerPoolMemberCollectionPrototype | The collection of prototype objects for load balancer pool members. For load balancers in the `network` family, the same `port` and `target` tuple cannot be shared by a member of any other load balancer.

begin
  #Update members of the load balancer pool
  result = api_instance.replace_load_balancer_pool_members(version, generation, load_balancer_id, pool_id, load_balancer_pool_member_collection_prototype)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling LoadBalancersApi->replace_load_balancer_pool_members: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **load_balancer_id** | **String**| The load balancer identifier | 
 **pool_id** | **String**| The pool identifier | 
 **load_balancer_pool_member_collection_prototype** | [**LoadBalancerPoolMemberCollectionPrototype**](LoadBalancerPoolMemberCollectionPrototype.md)| The collection of prototype objects for load balancer pool members. For load balancers in the &#x60;network&#x60; family, the same &#x60;port&#x60; and &#x60;target&#x60; tuple cannot be shared by a member of any other load balancer. | 

### Return type

[**LoadBalancerPoolMemberCollection**](LoadBalancerPoolMemberCollection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_load_balancer

> LoadBalancer update_load_balancer(version, generation, id, load_balancer_patch)

Update a load balancer

This request updates a load balancer.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::LoadBalancersApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The load balancer identifier
load_balancer_patch = IbmCloudVpc::LoadBalancerPatch.new # LoadBalancerPatch | The load balancer patch

begin
  #Update a load balancer
  result = api_instance.update_load_balancer(version, generation, id, load_balancer_patch)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling LoadBalancersApi->update_load_balancer: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The load balancer identifier | 
 **load_balancer_patch** | [**LoadBalancerPatch**](LoadBalancerPatch.md)| The load balancer patch | 

### Return type

[**LoadBalancer**](LoadBalancer.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_load_balancer_listener

> LoadBalancerListener update_load_balancer_listener(version, generation, load_balancer_id, id, load_balancer_listener_patch)

Update a listener

This request updates a load balancer listener from a listener patch.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::LoadBalancersApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
load_balancer_id = 'load_balancer_id_example' # String | The load balancer identifier
id = 'id_example' # String | The listener identifier
load_balancer_listener_patch = IbmCloudVpc::LoadBalancerListenerPatch.new # LoadBalancerListenerPatch | The load balancer listener patch

begin
  #Update a listener
  result = api_instance.update_load_balancer_listener(version, generation, load_balancer_id, id, load_balancer_listener_patch)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling LoadBalancersApi->update_load_balancer_listener: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **load_balancer_id** | **String**| The load balancer identifier | 
 **id** | **String**| The listener identifier | 
 **load_balancer_listener_patch** | [**LoadBalancerListenerPatch**](LoadBalancerListenerPatch.md)| The load balancer listener patch | 

### Return type

[**LoadBalancerListener**](LoadBalancerListener.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_load_balancer_listener_policy

> LoadBalancerListenerPolicy update_load_balancer_listener_policy(version, generation, load_balancer_id, listener_id, id, load_balancer_listener_policy_patch)

Update a policy of the load balancer listener

Updates a policy from a policy patch.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::LoadBalancersApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
load_balancer_id = 'load_balancer_id_example' # String | The load balancer identifier
listener_id = 'listener_id_example' # String | The listener identifier
id = 'id_example' # String | The policy identifier
load_balancer_listener_policy_patch = IbmCloudVpc::LoadBalancerListenerPolicyPatch.new # LoadBalancerListenerPolicyPatch | The listener policy patch

begin
  #Update a policy of the load balancer listener
  result = api_instance.update_load_balancer_listener_policy(version, generation, load_balancer_id, listener_id, id, load_balancer_listener_policy_patch)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling LoadBalancersApi->update_load_balancer_listener_policy: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **load_balancer_id** | **String**| The load balancer identifier | 
 **listener_id** | **String**| The listener identifier | 
 **id** | **String**| The policy identifier | 
 **load_balancer_listener_policy_patch** | [**LoadBalancerListenerPolicyPatch**](LoadBalancerListenerPolicyPatch.md)| The listener policy patch | 

### Return type

[**LoadBalancerListenerPolicy**](LoadBalancerListenerPolicy.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_load_balancer_listener_policy_rule

> LoadBalancerListenerPolicyRule update_load_balancer_listener_policy_rule(version, generation, load_balancer_id, listener_id, policy_id, id, load_balancer_listener_policy_rule_patch)

Update a rule of the load balancer listener policy

Updates a rule of the load balancer listener policy.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::LoadBalancersApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
load_balancer_id = 'load_balancer_id_example' # String | The load balancer identifier
listener_id = 'listener_id_example' # String | The listener identifier
policy_id = 'policy_id_example' # String | The policy identifier
id = 'id_example' # String | The rule identifier
load_balancer_listener_policy_rule_patch = IbmCloudVpc::LoadBalancerListenerPolicyRulePatch.new # LoadBalancerListenerPolicyRulePatch | The listener policy rule patch.

begin
  #Update a rule of the load balancer listener policy
  result = api_instance.update_load_balancer_listener_policy_rule(version, generation, load_balancer_id, listener_id, policy_id, id, load_balancer_listener_policy_rule_patch)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling LoadBalancersApi->update_load_balancer_listener_policy_rule: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **load_balancer_id** | **String**| The load balancer identifier | 
 **listener_id** | **String**| The listener identifier | 
 **policy_id** | **String**| The policy identifier | 
 **id** | **String**| The rule identifier | 
 **load_balancer_listener_policy_rule_patch** | [**LoadBalancerListenerPolicyRulePatch**](LoadBalancerListenerPolicyRulePatch.md)| The listener policy rule patch. | 

### Return type

[**LoadBalancerListenerPolicyRule**](LoadBalancerListenerPolicyRule.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_load_balancer_pool

> LoadBalancerPool update_load_balancer_pool(version, generation, load_balancer_id, id, load_balancer_pool_patch)

Update a load balancer pool

This request updates a load balancer pool from a pool patch.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::LoadBalancersApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
load_balancer_id = 'load_balancer_id_example' # String | The load balancer identifier
id = 'id_example' # String | The pool identifier
load_balancer_pool_patch = IbmCloudVpc::LoadBalancerPoolPatch.new # LoadBalancerPoolPatch | The load balancer pool patch

begin
  #Update a load balancer pool
  result = api_instance.update_load_balancer_pool(version, generation, load_balancer_id, id, load_balancer_pool_patch)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling LoadBalancersApi->update_load_balancer_pool: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **load_balancer_id** | **String**| The load balancer identifier | 
 **id** | **String**| The pool identifier | 
 **load_balancer_pool_patch** | [**LoadBalancerPoolPatch**](LoadBalancerPoolPatch.md)| The load balancer pool patch | 

### Return type

[**LoadBalancerPool**](LoadBalancerPool.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_load_balancer_pool_member

> LoadBalancerPoolMember update_load_balancer_pool_member(version, generation, load_balancer_id, pool_id, id, load_balancer_pool_member_patch)

Update a member in the load balancer pool

This request updates an existing member from a member patch.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::LoadBalancersApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
load_balancer_id = 'load_balancer_id_example' # String | The load balancer identifier
pool_id = 'pool_id_example' # String | The pool identifier
id = 'id_example' # String | The member identifier
load_balancer_pool_member_patch = IbmCloudVpc::LoadBalancerPoolMemberPatch.new # LoadBalancerPoolMemberPatch | The load balancer pool member patch

begin
  #Update a member in the load balancer pool
  result = api_instance.update_load_balancer_pool_member(version, generation, load_balancer_id, pool_id, id, load_balancer_pool_member_patch)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling LoadBalancersApi->update_load_balancer_pool_member: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **load_balancer_id** | **String**| The load balancer identifier | 
 **pool_id** | **String**| The pool identifier | 
 **id** | **String**| The member identifier | 
 **load_balancer_pool_member_patch** | [**LoadBalancerPoolMemberPatch**](LoadBalancerPoolMemberPatch.md)| The load balancer pool member patch | 

### Return type

[**LoadBalancerPoolMember**](LoadBalancerPoolMember.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

