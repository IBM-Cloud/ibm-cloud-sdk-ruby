# IbmCloudVpc::SecurityGroupsApi

All URIs are relative to *https://us-south.iaas.cloud.ibm.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_security_group_network_interface**](SecurityGroupsApi.md#add_security_group_network_interface) | **PUT** /security_groups/{security_group_id}/network_interfaces/{id} | Add a network interface to a security group
[**create_security_group**](SecurityGroupsApi.md#create_security_group) | **POST** /security_groups | Create a security group
[**create_security_group_rule**](SecurityGroupsApi.md#create_security_group_rule) | **POST** /security_groups/{security_group_id}/rules | Create a security group rule
[**delete_security_group**](SecurityGroupsApi.md#delete_security_group) | **DELETE** /security_groups/{id} | Delete a security group
[**delete_security_group_rule**](SecurityGroupsApi.md#delete_security_group_rule) | **DELETE** /security_groups/{security_group_id}/rules/{id} | Delete a security group rule
[**get_security_group**](SecurityGroupsApi.md#get_security_group) | **GET** /security_groups/{id} | Retrieve a security group
[**get_security_group_network_interface**](SecurityGroupsApi.md#get_security_group_network_interface) | **GET** /security_groups/{security_group_id}/network_interfaces/{id} | Retrieve a network interface in a security group
[**get_security_group_rule**](SecurityGroupsApi.md#get_security_group_rule) | **GET** /security_groups/{security_group_id}/rules/{id} | Retrieve a security group rule
[**list_security_group_network_interfaces**](SecurityGroupsApi.md#list_security_group_network_interfaces) | **GET** /security_groups/{security_group_id}/network_interfaces | List a security group&#39;s network interfaces
[**list_security_group_rules**](SecurityGroupsApi.md#list_security_group_rules) | **GET** /security_groups/{security_group_id}/rules | List all the rules of a security group
[**list_security_groups**](SecurityGroupsApi.md#list_security_groups) | **GET** /security_groups | List all security groups
[**remove_security_group_network_interface**](SecurityGroupsApi.md#remove_security_group_network_interface) | **DELETE** /security_groups/{security_group_id}/network_interfaces/{id} | Remove a network interface from a security group.
[**update_security_group**](SecurityGroupsApi.md#update_security_group) | **PATCH** /security_groups/{id} | Update a security group
[**update_security_group_rule**](SecurityGroupsApi.md#update_security_group_rule) | **PATCH** /security_groups/{security_group_id}/rules/{id} | Update a security group rule



## add_security_group_network_interface

> NetworkInterface add_security_group_network_interface(version, generation, security_group_id, id)

Add a network interface to a security group

This request adds an existing network interface to an existing security group. When a network interface is added to a security group, the security group rules are applied to the network interface. A request body is not required, and if supplied, is ignored.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::SecurityGroupsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
security_group_id = 'security_group_id_example' # String | The security group identifier
id = 'id_example' # String | The network interface identifier

begin
  #Add a network interface to a security group
  result = api_instance.add_security_group_network_interface(version, generation, security_group_id, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling SecurityGroupsApi->add_security_group_network_interface: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **security_group_id** | **String**| The security group identifier | 
 **id** | **String**| The network interface identifier | 

### Return type

[**NetworkInterface**](NetworkInterface.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_security_group

> SecurityGroup create_security_group(version, generation, security_group_prototype)

Create a security group

This request creates a new security group from a security group prototype object. The prototype object is structured in the same way as a retrieved security group, and contains the information necessary to create the new security group. If security group rules are included in the protoype object, those rules will be added to the security group. Each security group is scoped to one VPC. Only network interfaces on instances in that VPC can be added to the security group.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::SecurityGroupsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
security_group_prototype = IbmCloudVpc::SecurityGroupPrototype.new # SecurityGroupPrototype | The security group prototype object

begin
  #Create a security group
  result = api_instance.create_security_group(version, generation, security_group_prototype)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling SecurityGroupsApi->create_security_group: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **security_group_prototype** | [**SecurityGroupPrototype**](SecurityGroupPrototype.md)| The security group prototype object | 

### Return type

[**SecurityGroup**](SecurityGroup.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_security_group_rule

> SecurityGroupRule create_security_group_rule(version, generation, security_group_id, security_group_rule_prototype)

Create a security group rule

This request creates a new security group rule from a security group rule prototype object. The prototype object is structured in the same way as a retrieved security group rule and contains the information necessary to create the rule. As part of creating a new rule in a security group, the rule is applied to all the networking interfaces in the security group. Rules specify which IP traffic a security group should allow. Security group rules are stateful, such that reverse traffic in response to allowed traffic is automatically permitted. A rule allowing inbound TCP traffic on port 80 also allows outbound TCP traffic on port 80 without the need for an additional rule.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::SecurityGroupsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
security_group_id = 'security_group_id_example' # String | The security group identifier
security_group_rule_prototype = IbmCloudVpc::SecurityGroupRulePrototype.new # SecurityGroupRulePrototype | The properties of the security group rule to be created.

begin
  #Create a security group rule
  result = api_instance.create_security_group_rule(version, generation, security_group_id, security_group_rule_prototype)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling SecurityGroupsApi->create_security_group_rule: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **security_group_id** | **String**| The security group identifier | 
 **security_group_rule_prototype** | [**SecurityGroupRulePrototype**](SecurityGroupRulePrototype.md)| The properties of the security group rule to be created. | 

### Return type

[**SecurityGroupRule**](SecurityGroupRule.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_security_group

> delete_security_group(version, generation, id)

Delete a security group

This request deletes a security group. A security group cannot be deleted if it is referenced by any network interfaces or other security group rules. Additionally, a VPC's default security group cannot be deleted. This operation cannot be reversed.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::SecurityGroupsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The security group identifier

begin
  #Delete a security group
  api_instance.delete_security_group(version, generation, id)
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling SecurityGroupsApi->delete_security_group: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The security group identifier | 

### Return type

nil (empty response body)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_security_group_rule

> delete_security_group_rule(version, generation, security_group_id, id)

Delete a security group rule

This request deletes a security group rule. This operation cannot be reversed. Removing a security group rule will not end existing connections allowed by that rule.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::SecurityGroupsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
security_group_id = 'security_group_id_example' # String | The security group identifier
id = 'id_example' # String | The rule identifier

begin
  #Delete a security group rule
  api_instance.delete_security_group_rule(version, generation, security_group_id, id)
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling SecurityGroupsApi->delete_security_group_rule: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **security_group_id** | **String**| The security group identifier | 
 **id** | **String**| The rule identifier | 

### Return type

nil (empty response body)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_security_group

> SecurityGroup get_security_group(version, generation, id)

Retrieve a security group

This request retrieves a single security group specified by the identifier in the URL path.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::SecurityGroupsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The security group identifier

begin
  #Retrieve a security group
  result = api_instance.get_security_group(version, generation, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling SecurityGroupsApi->get_security_group: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The security group identifier | 

### Return type

[**SecurityGroup**](SecurityGroup.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_security_group_network_interface

> NetworkInterface get_security_group_network_interface(version, generation, security_group_id, id)

Retrieve a network interface in a security group

This request retrieves a single network interface specified by the identifier in the URL path. The network interface must be an existing member of the security group.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::SecurityGroupsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
security_group_id = 'security_group_id_example' # String | The security group identifier
id = 'id_example' # String | The network interface identifier

begin
  #Retrieve a network interface in a security group
  result = api_instance.get_security_group_network_interface(version, generation, security_group_id, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling SecurityGroupsApi->get_security_group_network_interface: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **security_group_id** | **String**| The security group identifier | 
 **id** | **String**| The network interface identifier | 

### Return type

[**NetworkInterface**](NetworkInterface.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_security_group_rule

> SecurityGroupRule get_security_group_rule(version, generation, security_group_id, id)

Retrieve a security group rule

This request retrieves a single security group rule specified by the identifier in the URL path.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::SecurityGroupsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
security_group_id = 'security_group_id_example' # String | The security group identifier
id = 'id_example' # String | The rule identifier

begin
  #Retrieve a security group rule
  result = api_instance.get_security_group_rule(version, generation, security_group_id, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling SecurityGroupsApi->get_security_group_rule: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **security_group_id** | **String**| The security group identifier | 
 **id** | **String**| The rule identifier | 

### Return type

[**SecurityGroupRule**](SecurityGroupRule.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_security_group_network_interfaces

> NetworkInterfaceCollection list_security_group_network_interfaces(version, generation, security_group_id, opts)

List a security group's network interfaces

This request lists all network interfaces associated with the security group, to which the rules in the security group are applied.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::SecurityGroupsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
security_group_id = 'security_group_id_example' # String | The security group identifier
opts = {
  start: 'start_example', # String | A server-supplied token determining what resource to start the page on
  limit: 50 # Integer | The number of resources to return on a page
}

begin
  #List a security group's network interfaces
  result = api_instance.list_security_group_network_interfaces(version, generation, security_group_id, opts)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling SecurityGroupsApi->list_security_group_network_interfaces: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **security_group_id** | **String**| The security group identifier | 
 **start** | **String**| A server-supplied token determining what resource to start the page on | [optional] 
 **limit** | **Integer**| The number of resources to return on a page | [optional] [default to 50]

### Return type

[**NetworkInterfaceCollection**](NetworkInterfaceCollection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_security_group_rules

> SecurityGroupRuleCollection list_security_group_rules(version, generation, security_group_id)

List all the rules of a security group

This request lists all the security group rules for a particular security group. These rules define what traffic the security group permits. Security group rules are stateful, such that reverse traffic in response to allowed traffic is automatically permitted.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::SecurityGroupsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
security_group_id = 'security_group_id_example' # String | The security group identifier

begin
  #List all the rules of a security group
  result = api_instance.list_security_group_rules(version, generation, security_group_id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling SecurityGroupsApi->list_security_group_rules: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **security_group_id** | **String**| The security group identifier | 

### Return type

[**SecurityGroupRuleCollection**](SecurityGroupRuleCollection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_security_groups

> SecurityGroupCollection list_security_groups(version, generation, opts)

List all security groups

This request lists all existing security groups. Security groups provide a convenient way to apply IP filtering rules to instances in the associated VPC. With security groups, all traffic is denied by default, and rules added to security groups define which traffic the security group permits. Security group rules are stateful such that reverse traffic in response to allowed traffic is automatically permitted.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::SecurityGroupsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
opts = {
  start: 'start_example', # String | A server-supplied token determining what resource to start the page on
  limit: 50, # Integer | The number of resources to return on a page
  resource_group_id: 'resource_group_id_example', # String | Filters the collection to resources within one of the resource groups identified in a comma-separated list of resource group identifiers
  vpc_id: 'vpc_id_example', # String | Filters the collection to resources in the VPC with the specified identifier
  vpc_crn: 'vpc_crn_example', # String | Filters the collection to resources in the VPC with the specified CRN
  vpc_name: 'vpc_name_example' # String | Filters the collection to resources in the VPC with the exact specified name
}

begin
  #List all security groups
  result = api_instance.list_security_groups(version, generation, opts)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling SecurityGroupsApi->list_security_groups: #{e}"
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
 **vpc_id** | **String**| Filters the collection to resources in the VPC with the specified identifier | [optional] 
 **vpc_crn** | **String**| Filters the collection to resources in the VPC with the specified CRN | [optional] 
 **vpc_name** | **String**| Filters the collection to resources in the VPC with the exact specified name | [optional] 

### Return type

[**SecurityGroupCollection**](SecurityGroupCollection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_security_group_network_interface

> remove_security_group_network_interface(version, generation, security_group_id, id)

Remove a network interface from a security group.

This request removes a network interface from a security group. Security groups are stateful, so any changes to a network interface's security groups are applied to new connections. Existing connections are not affected. If the network interface being removed has no other security groups, it will be attached to the VPC's default security group.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::SecurityGroupsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
security_group_id = 'security_group_id_example' # String | The security group identifier
id = 'id_example' # String | The network interface identifier

begin
  #Remove a network interface from a security group.
  api_instance.remove_security_group_network_interface(version, generation, security_group_id, id)
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling SecurityGroupsApi->remove_security_group_network_interface: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **security_group_id** | **String**| The security group identifier | 
 **id** | **String**| The network interface identifier | 

### Return type

nil (empty response body)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_security_group

> SecurityGroup update_security_group(version, generation, id, security_group_patch)

Update a security group

This request updates a security group with the information provided in a security group patch object. The security group patch object is structured in the same way as a retrieved security group and contains only the information to be updated.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::SecurityGroupsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The security group identifier
security_group_patch = IbmCloudVpc::SecurityGroupPatch.new # SecurityGroupPatch | The security group patch.

begin
  #Update a security group
  result = api_instance.update_security_group(version, generation, id, security_group_patch)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling SecurityGroupsApi->update_security_group: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The security group identifier | 
 **security_group_patch** | [**SecurityGroupPatch**](SecurityGroupPatch.md)| The security group patch. | 

### Return type

[**SecurityGroup**](SecurityGroup.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_security_group_rule

> SecurityGroupRule update_security_group_rule(version, generation, security_group_id, id, security_group_rule_patch)

Update a security group rule

This request updates a security group rule with the information in a provided rule patch object. The rule patch object contains only the information to be updated. The request will fail if the information is not applicable to the rule's protocol.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::SecurityGroupsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
security_group_id = 'security_group_id_example' # String | The security group identifier
id = 'id_example' # String | The rule identifier
security_group_rule_patch = IbmCloudVpc::SecurityGroupRulePatch.new # SecurityGroupRulePatch | The security group rule patch.

begin
  #Update a security group rule
  result = api_instance.update_security_group_rule(version, generation, security_group_id, id, security_group_rule_patch)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling SecurityGroupsApi->update_security_group_rule: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **security_group_id** | **String**| The security group identifier | 
 **id** | **String**| The rule identifier | 
 **security_group_rule_patch** | [**SecurityGroupRulePatch**](SecurityGroupRulePatch.md)| The security group rule patch. | 

### Return type

[**SecurityGroupRule**](SecurityGroupRule.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

