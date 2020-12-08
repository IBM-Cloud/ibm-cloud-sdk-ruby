# IbmCloudVpc::NetworkACLsApi

All URIs are relative to *https://us-south.iaas.cloud.ibm.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_network_acl**](NetworkACLsApi.md#create_network_acl) | **POST** /network_acls | Create a network ACL
[**create_network_acl_rule**](NetworkACLsApi.md#create_network_acl_rule) | **POST** /network_acls/{network_acl_id}/rules | Create a rule
[**delete_network_acl**](NetworkACLsApi.md#delete_network_acl) | **DELETE** /network_acls/{id} | Delete specified network ACL
[**delete_network_acl_rule**](NetworkACLsApi.md#delete_network_acl_rule) | **DELETE** /network_acls/{network_acl_id}/rules/{id} | Delete specified rule
[**get_network_acl**](NetworkACLsApi.md#get_network_acl) | **GET** /network_acls/{id} | Retrieve specified network ACL
[**get_network_acl_rule**](NetworkACLsApi.md#get_network_acl_rule) | **GET** /network_acls/{network_acl_id}/rules/{id} | Retrieve specified rule
[**list_network_acl_rules**](NetworkACLsApi.md#list_network_acl_rules) | **GET** /network_acls/{network_acl_id}/rules | List all rules for a network ACL
[**list_network_acls**](NetworkACLsApi.md#list_network_acls) | **GET** /network_acls | List all network ACLs
[**update_network_acl**](NetworkACLsApi.md#update_network_acl) | **PATCH** /network_acls/{id} | Update a network ACL
[**update_network_acl_rule**](NetworkACLsApi.md#update_network_acl_rule) | **PATCH** /network_acls/{network_acl_id}/rules/{id} | Update a rule



## create_network_acl

> NetworkACL create_network_acl(version, generation, opts)

Create a network ACL

This request creates a new network ACL from a network ACL prototype object. The prototype object is structured in the same way as a retrieved network ACL, and contains the information necessary to create the new network ACL.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::NetworkACLsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
opts = {
  network_acl_prototype: {"name":"my-network-acl"} # NetworkACLPrototype | The network ACL prototype object
}

begin
  #Create a network ACL
  result = api_instance.create_network_acl(version, generation, opts)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling NetworkACLsApi->create_network_acl: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **network_acl_prototype** | [**NetworkACLPrototype**](NetworkACLPrototype.md)| The network ACL prototype object | [optional] 

### Return type

[**NetworkACL**](NetworkACL.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_network_acl_rule

> NetworkACLRule create_network_acl_rule(version, generation, network_acl_id, network_acl_rule_prototype)

Create a rule

This request creates a new rule from a network ACL rule prototype object. The prototype object is structured in the same way as a retrieved rule, and contains the information necessary to create the new rule.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::NetworkACLsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
network_acl_id = 'network_acl_id_example' # String | The network ACL identifier
network_acl_rule_prototype = IbmCloudVpc::NetworkACLRulePrototype.new # NetworkACLRulePrototype | The network ACL rule prototype object

begin
  #Create a rule
  result = api_instance.create_network_acl_rule(version, generation, network_acl_id, network_acl_rule_prototype)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling NetworkACLsApi->create_network_acl_rule: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **network_acl_id** | **String**| The network ACL identifier | 
 **network_acl_rule_prototype** | [**NetworkACLRulePrototype**](NetworkACLRulePrototype.md)| The network ACL rule prototype object | 

### Return type

[**NetworkACLRule**](NetworkACLRule.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_network_acl

> delete_network_acl(version, generation, id)

Delete specified network ACL

This request deletes a network ACL. This operation cannot be reversed. For this request to succeed, the network ACL must not be the default network ACL for any VPCs, and the network ACL must not be attached to any subnets.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::NetworkACLsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The network ACL identifier

begin
  #Delete specified network ACL
  api_instance.delete_network_acl(version, generation, id)
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling NetworkACLsApi->delete_network_acl: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The network ACL identifier | 

### Return type

nil (empty response body)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_network_acl_rule

> delete_network_acl_rule(version, generation, network_acl_id, id)

Delete specified rule

This request deletes a rule. This operation cannot be reversed.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::NetworkACLsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
network_acl_id = 'network_acl_id_example' # String | The network ACL identifier
id = 'id_example' # String | The rule identifier

begin
  #Delete specified rule
  api_instance.delete_network_acl_rule(version, generation, network_acl_id, id)
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling NetworkACLsApi->delete_network_acl_rule: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **network_acl_id** | **String**| The network ACL identifier | 
 **id** | **String**| The rule identifier | 

### Return type

nil (empty response body)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_network_acl

> NetworkACL get_network_acl(version, generation, id)

Retrieve specified network ACL

This request retrieves a single network ACL specified by the identifier in the URL.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::NetworkACLsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The network ACL identifier

begin
  #Retrieve specified network ACL
  result = api_instance.get_network_acl(version, generation, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling NetworkACLsApi->get_network_acl: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The network ACL identifier | 

### Return type

[**NetworkACL**](NetworkACL.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_network_acl_rule

> NetworkACLRule get_network_acl_rule(version, generation, network_acl_id, id)

Retrieve specified rule

This request retrieves a single rule specified by the identifier in the URL.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::NetworkACLsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
network_acl_id = 'network_acl_id_example' # String | The network ACL identifier
id = 'id_example' # String | The rule identifier

begin
  #Retrieve specified rule
  result = api_instance.get_network_acl_rule(version, generation, network_acl_id, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling NetworkACLsApi->get_network_acl_rule: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **network_acl_id** | **String**| The network ACL identifier | 
 **id** | **String**| The rule identifier | 

### Return type

[**NetworkACLRule**](NetworkACLRule.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_network_acl_rules

> NetworkACLRuleCollection list_network_acl_rules(version, generation, network_acl_id, opts)

List all rules for a network ACL

This request lists all rules for a network ACL. These rules can allow or deny traffic between a source CIDR block and a destination CIDR block over a particular protocol and port range.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::NetworkACLsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
network_acl_id = 'network_acl_id_example' # String | The network ACL identifier
opts = {
  start: 'start_example', # String | A server-supplied token determining what resource to start the page on
  limit: 50, # Integer | The number of resources to return on a page
  direction: 'direction_example' # String | Filters the collection to rules with the specified direction
}

begin
  #List all rules for a network ACL
  result = api_instance.list_network_acl_rules(version, generation, network_acl_id, opts)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling NetworkACLsApi->list_network_acl_rules: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **network_acl_id** | **String**| The network ACL identifier | 
 **start** | **String**| A server-supplied token determining what resource to start the page on | [optional] 
 **limit** | **Integer**| The number of resources to return on a page | [optional] [default to 50]
 **direction** | **String**| Filters the collection to rules with the specified direction | [optional] 

### Return type

[**NetworkACLRuleCollection**](NetworkACLRuleCollection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_network_acls

> NetworkACLCollection list_network_acls(version, generation, opts)

List all network ACLs

This request lists all network ACLs in the region. A network ACL defines a set of packet filtering (5-tuple) rules for all traffic in and out of a subnet. Both allow and deny rules can be defined, and rules are stateless such that reverse traffic in response to allowed traffic is not automatically permitted.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::NetworkACLsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
opts = {
  start: 'start_example', # String | A server-supplied token determining what resource to start the page on
  limit: 50, # Integer | The number of resources to return on a page
  resource_group_id: 'resource_group_id_example' # String | Filters the collection to resources within one of the resource groups identified in a comma-separated list of resource group identifiers
}

begin
  #List all network ACLs
  result = api_instance.list_network_acls(version, generation, opts)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling NetworkACLsApi->list_network_acls: #{e}"
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

[**NetworkACLCollection**](NetworkACLCollection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_network_acl

> NetworkACL update_network_acl(version, generation, id, network_acl_patch)

Update a network ACL

This request updates a network ACL's name.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::NetworkACLsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The network ACL identifier
network_acl_patch = IbmCloudVpc::NetworkACLPatch.new # NetworkACLPatch | The network ACL patch

begin
  #Update a network ACL
  result = api_instance.update_network_acl(version, generation, id, network_acl_patch)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling NetworkACLsApi->update_network_acl: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The network ACL identifier | 
 **network_acl_patch** | [**NetworkACLPatch**](NetworkACLPatch.md)| The network ACL patch | 

### Return type

[**NetworkACL**](NetworkACL.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/merge-patch+json
- **Accept**: application/json


## update_network_acl_rule

> NetworkACLRule update_network_acl_rule(version, generation, network_acl_id, id, network_acl_rule_patch)

Update a rule

This request updates a rule with the information in a provided rule patch. The rule patch object contains only the information to be updated. The request will fail if the information is not applicable to the rule's protocol.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::NetworkACLsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
network_acl_id = 'network_acl_id_example' # String | The network ACL identifier
id = 'id_example' # String | The rule identifier
network_acl_rule_patch = IbmCloudVpc::NetworkACLRulePatch.new # NetworkACLRulePatch | The network ACL rule patch

begin
  #Update a rule
  result = api_instance.update_network_acl_rule(version, generation, network_acl_id, id, network_acl_rule_patch)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling NetworkACLsApi->update_network_acl_rule: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **network_acl_id** | **String**| The network ACL identifier | 
 **id** | **String**| The rule identifier | 
 **network_acl_rule_patch** | [**NetworkACLRulePatch**](NetworkACLRulePatch.md)| The network ACL rule patch | 

### Return type

[**NetworkACLRule**](NetworkACLRule.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/merge-patch+json
- **Accept**: application/json

