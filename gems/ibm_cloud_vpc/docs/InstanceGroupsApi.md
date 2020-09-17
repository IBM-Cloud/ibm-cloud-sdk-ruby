# IbmCloudVpc::InstanceGroupsApi

All URIs are relative to *https://us-south.iaas.cloud.ibm.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_instance_group**](InstanceGroupsApi.md#create_instance_group) | **POST** /instance_groups | Create an instance group
[**create_instance_group_manager**](InstanceGroupsApi.md#create_instance_group_manager) | **POST** /instance_groups/{instance_group_id}/managers | Create an instance group manager
[**create_instance_group_manager_policy**](InstanceGroupsApi.md#create_instance_group_manager_policy) | **POST** /instance_groups/{instance_group_id}/managers/{instance_group_manager_id}/policies | Create an instance group manager policy
[**delete_instance_group**](InstanceGroupsApi.md#delete_instance_group) | **DELETE** /instance_groups/{id} | Delete specified instance group
[**delete_instance_group_load_balancer**](InstanceGroupsApi.md#delete_instance_group_load_balancer) | **DELETE** /instance_groups/{instance_group_id}/load_balancer | Delete specified instance group load balancer
[**delete_instance_group_manager**](InstanceGroupsApi.md#delete_instance_group_manager) | **DELETE** /instance_groups/{instance_group_id}/managers/{id} | Delete specified instance group manager
[**delete_instance_group_manager_policy**](InstanceGroupsApi.md#delete_instance_group_manager_policy) | **DELETE** /instance_groups/{instance_group_id}/managers/{instance_group_manager_id}/policies/{id} | Delete specified instance group manager policy
[**delete_instance_group_membership**](InstanceGroupsApi.md#delete_instance_group_membership) | **DELETE** /instance_groups/{instance_group_id}/memberships/{id} | Delete specified instance group membership
[**delete_instance_group_memberships**](InstanceGroupsApi.md#delete_instance_group_memberships) | **DELETE** /instance_groups/{instance_group_id}/memberships | Delete all memberships from the instance group
[**get_instance_group**](InstanceGroupsApi.md#get_instance_group) | **GET** /instance_groups/{id} | Retrieve specified instance group
[**get_instance_group_manager**](InstanceGroupsApi.md#get_instance_group_manager) | **GET** /instance_groups/{instance_group_id}/managers/{id} | Retrieve specified instance group
[**get_instance_group_manager_policy**](InstanceGroupsApi.md#get_instance_group_manager_policy) | **GET** /instance_groups/{instance_group_id}/managers/{instance_group_manager_id}/policies/{id} | Retrieve specified instance group manager policy
[**get_instance_group_membership**](InstanceGroupsApi.md#get_instance_group_membership) | **GET** /instance_groups/{instance_group_id}/memberships/{id} | Retrieve specified instance group membership
[**list_instance_group_manager_policies**](InstanceGroupsApi.md#list_instance_group_manager_policies) | **GET** /instance_groups/{instance_group_id}/managers/{instance_group_manager_id}/policies | List all policies for an instance group manager
[**list_instance_group_managers**](InstanceGroupsApi.md#list_instance_group_managers) | **GET** /instance_groups/{instance_group_id}/managers | List all managers for an instance group
[**list_instance_group_memberships**](InstanceGroupsApi.md#list_instance_group_memberships) | **GET** /instance_groups/{instance_group_id}/memberships | List all memberships for the instance group
[**list_instance_groups**](InstanceGroupsApi.md#list_instance_groups) | **GET** /instance_groups | List all instance groups
[**update_instance_group**](InstanceGroupsApi.md#update_instance_group) | **PATCH** /instance_groups/{id} | Update specified instance group
[**update_instance_group_manager**](InstanceGroupsApi.md#update_instance_group_manager) | **PATCH** /instance_groups/{instance_group_id}/managers/{id} | Update specified instance group manager
[**update_instance_group_manager_policy**](InstanceGroupsApi.md#update_instance_group_manager_policy) | **PATCH** /instance_groups/{instance_group_id}/managers/{instance_group_manager_id}/policies/{id} | Update specified instance group manager policy
[**update_instance_group_membership**](InstanceGroupsApi.md#update_instance_group_membership) | **PATCH** /instance_groups/{instance_group_id}/memberships/{id} | Update specified instance group membership



## create_instance_group

> InstanceGroup create_instance_group(version, generation, instance_group_prototype)

Create an instance group

This request creates a new instance group

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstanceGroupsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
instance_group_prototype = IbmCloudVpc::InstanceGroupPrototype.new # InstanceGroupPrototype | The instance group prototype object

begin
  #Create an instance group
  result = api_instance.create_instance_group(version, generation, instance_group_prototype)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstanceGroupsApi->create_instance_group: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **instance_group_prototype** | [**InstanceGroupPrototype**](InstanceGroupPrototype.md)| The instance group prototype object | 

### Return type

[**InstanceGroup**](InstanceGroup.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_instance_group_manager

> InstanceGroupManager create_instance_group_manager(version, generation, instance_group_id, instance_group_manager_prototype)

Create an instance group manager

This request creates a new instance group manager

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstanceGroupsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
instance_group_id = 'instance_group_id_example' # String | The instance group identifier
instance_group_manager_prototype = IbmCloudVpc::InstanceGroupManagerPrototype.new # InstanceGroupManagerPrototype | The instance group manager prototype object

begin
  #Create an instance group manager
  result = api_instance.create_instance_group_manager(version, generation, instance_group_id, instance_group_manager_prototype)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstanceGroupsApi->create_instance_group_manager: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **instance_group_id** | **String**| The instance group identifier | 
 **instance_group_manager_prototype** | [**InstanceGroupManagerPrototype**](InstanceGroupManagerPrototype.md)| The instance group manager prototype object | 

### Return type

[**InstanceGroupManager**](InstanceGroupManager.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_instance_group_manager_policy

> InstanceGroupManagerPolicy create_instance_group_manager_policy(version, generation, instance_group_id, instance_group_manager_id, instance_group_manager_policy_prototype)

Create an instance group manager policy

This request creates a new instance group manager policy

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstanceGroupsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
instance_group_id = 'instance_group_id_example' # String | The instance group identifier
instance_group_manager_id = 'instance_group_manager_id_example' # String | The instance group manager identifier
instance_group_manager_policy_prototype = IbmCloudVpc::InstanceGroupManagerPolicyPrototype.new # InstanceGroupManagerPolicyPrototype | The instance group manager policy prototype object

begin
  #Create an instance group manager policy
  result = api_instance.create_instance_group_manager_policy(version, generation, instance_group_id, instance_group_manager_id, instance_group_manager_policy_prototype)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstanceGroupsApi->create_instance_group_manager_policy: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **instance_group_id** | **String**| The instance group identifier | 
 **instance_group_manager_id** | **String**| The instance group manager identifier | 
 **instance_group_manager_policy_prototype** | [**InstanceGroupManagerPolicyPrototype**](InstanceGroupManagerPolicyPrototype.md)| The instance group manager policy prototype object | 

### Return type

[**InstanceGroupManagerPolicy**](InstanceGroupManagerPolicy.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_instance_group

> delete_instance_group(version, generation, id)

Delete specified instance group

This request deletes an instance group. This operation cannot be reversed. Any instances associated with the group will be deleted.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstanceGroupsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The instance group identifier

begin
  #Delete specified instance group
  api_instance.delete_instance_group(version, generation, id)
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstanceGroupsApi->delete_instance_group: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The instance group identifier | 

### Return type

nil (empty response body)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_instance_group_load_balancer

> delete_instance_group_load_balancer(version, generation, instance_group_id)

Delete specified instance group load balancer

This request unbinds the instance group from the load balancer pool, and deletes the load balancer pool members.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstanceGroupsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
instance_group_id = 'instance_group_id_example' # String | The instance group identifier

begin
  #Delete specified instance group load balancer
  api_instance.delete_instance_group_load_balancer(version, generation, instance_group_id)
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstanceGroupsApi->delete_instance_group_load_balancer: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **instance_group_id** | **String**| The instance group identifier | 

### Return type

nil (empty response body)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_instance_group_manager

> delete_instance_group_manager(version, generation, instance_group_id, id)

Delete specified instance group manager

This request deletes an instance group manager. This operation cannot be reversed.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstanceGroupsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
instance_group_id = 'instance_group_id_example' # String | The instance group identifier
id = 'id_example' # String | The instance group manager identifier

begin
  #Delete specified instance group manager
  api_instance.delete_instance_group_manager(version, generation, instance_group_id, id)
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstanceGroupsApi->delete_instance_group_manager: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **instance_group_id** | **String**| The instance group identifier | 
 **id** | **String**| The instance group manager identifier | 

### Return type

nil (empty response body)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_instance_group_manager_policy

> delete_instance_group_manager_policy(version, generation, instance_group_id, instance_group_manager_id, id)

Delete specified instance group manager policy

This request deletes an instance group manager policy. This operation cannot be reversed.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstanceGroupsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
instance_group_id = 'instance_group_id_example' # String | The instance group identifier
instance_group_manager_id = 'instance_group_manager_id_example' # String | The instance group manager identifier
id = 'id_example' # String | The instance group manager policy identifier

begin
  #Delete specified instance group manager policy
  api_instance.delete_instance_group_manager_policy(version, generation, instance_group_id, instance_group_manager_id, id)
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstanceGroupsApi->delete_instance_group_manager_policy: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **instance_group_id** | **String**| The instance group identifier | 
 **instance_group_manager_id** | **String**| The instance group manager identifier | 
 **id** | **String**| The instance group manager policy identifier | 

### Return type

nil (empty response body)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_instance_group_membership

> delete_instance_group_membership(version, generation, instance_group_id, id)

Delete specified instance group membership

This request deletes a memberships of an instance group. This operation cannot be reversed. reversed. If the membership has `delete_instance_on_membership_delete` set to `true`, the instance will also be deleted.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstanceGroupsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
instance_group_id = 'instance_group_id_example' # String | The instance group identifier
id = 'id_example' # String | The instance group membership identifier

begin
  #Delete specified instance group membership
  api_instance.delete_instance_group_membership(version, generation, instance_group_id, id)
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstanceGroupsApi->delete_instance_group_membership: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **instance_group_id** | **String**| The instance group identifier | 
 **id** | **String**| The instance group membership identifier | 

### Return type

nil (empty response body)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_instance_group_memberships

> delete_instance_group_memberships(version, generation, instance_group_id)

Delete all memberships from the instance group

This request deletes all memberships of an instance group. This operation cannot be reversed. reversed. Any memberships that have `delete_instance_on_membership_delete` set to `true` will also have their instances deleted.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstanceGroupsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
instance_group_id = 'instance_group_id_example' # String | The instance group identifier

begin
  #Delete all memberships from the instance group
  api_instance.delete_instance_group_memberships(version, generation, instance_group_id)
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstanceGroupsApi->delete_instance_group_memberships: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **instance_group_id** | **String**| The instance group identifier | 

### Return type

nil (empty response body)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_instance_group

> InstanceGroup get_instance_group(version, generation, id)

Retrieve specified instance group

This request retrieves a single instance group specified by identifier in the URL.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstanceGroupsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The instance group identifier

begin
  #Retrieve specified instance group
  result = api_instance.get_instance_group(version, generation, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstanceGroupsApi->get_instance_group: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The instance group identifier | 

### Return type

[**InstanceGroup**](InstanceGroup.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_instance_group_manager

> InstanceGroupManager get_instance_group_manager(version, generation, instance_group_id, id)

Retrieve specified instance group

This request retrieves a single instance group manager specified by identifier in the URL.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstanceGroupsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
instance_group_id = 'instance_group_id_example' # String | The instance group identifier
id = 'id_example' # String | The instance group manager identifier

begin
  #Retrieve specified instance group
  result = api_instance.get_instance_group_manager(version, generation, instance_group_id, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstanceGroupsApi->get_instance_group_manager: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **instance_group_id** | **String**| The instance group identifier | 
 **id** | **String**| The instance group manager identifier | 

### Return type

[**InstanceGroupManager**](InstanceGroupManager.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_instance_group_manager_policy

> InstanceGroupManagerPolicy get_instance_group_manager_policy(version, generation, instance_group_id, instance_group_manager_id, id)

Retrieve specified instance group manager policy

This request retrieves a single instance group manager policy specified by identifier in the URL.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstanceGroupsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
instance_group_id = 'instance_group_id_example' # String | The instance group identifier
instance_group_manager_id = 'instance_group_manager_id_example' # String | The instance group manager identifier
id = 'id_example' # String | The instance group manager policy identifier

begin
  #Retrieve specified instance group manager policy
  result = api_instance.get_instance_group_manager_policy(version, generation, instance_group_id, instance_group_manager_id, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstanceGroupsApi->get_instance_group_manager_policy: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **instance_group_id** | **String**| The instance group identifier | 
 **instance_group_manager_id** | **String**| The instance group manager identifier | 
 **id** | **String**| The instance group manager policy identifier | 

### Return type

[**InstanceGroupManagerPolicy**](InstanceGroupManagerPolicy.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_instance_group_membership

> InstanceGroupMembership get_instance_group_membership(version, generation, instance_group_id, id)

Retrieve specified instance group membership

This request retrieves a single instance group membership specified by identifier in the URL.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstanceGroupsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
instance_group_id = 'instance_group_id_example' # String | The instance group identifier
id = 'id_example' # String | The instance group membership identifier

begin
  #Retrieve specified instance group membership
  result = api_instance.get_instance_group_membership(version, generation, instance_group_id, id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstanceGroupsApi->get_instance_group_membership: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **instance_group_id** | **String**| The instance group identifier | 
 **id** | **String**| The instance group membership identifier | 

### Return type

[**InstanceGroupMembership**](InstanceGroupMembership.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_instance_group_manager_policies

> InstanceGroupManagerPolicyCollection list_instance_group_manager_policies(version, generation, instance_group_id, instance_group_manager_id)

List all policies for an instance group manager

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstanceGroupsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
instance_group_id = 'instance_group_id_example' # String | The instance group identifier
instance_group_manager_id = 'instance_group_manager_id_example' # String | The instance group manager identifier

begin
  #List all policies for an instance group manager
  result = api_instance.list_instance_group_manager_policies(version, generation, instance_group_id, instance_group_manager_id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstanceGroupsApi->list_instance_group_manager_policies: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **instance_group_id** | **String**| The instance group identifier | 
 **instance_group_manager_id** | **String**| The instance group manager identifier | 

### Return type

[**InstanceGroupManagerPolicyCollection**](InstanceGroupManagerPolicyCollection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_instance_group_managers

> InstanceGroupManagerCollection list_instance_group_managers(version, generation, instance_group_id)

List all managers for an instance group

This request retrieves instance group managers

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstanceGroupsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
instance_group_id = 'instance_group_id_example' # String | The instance group identifier

begin
  #List all managers for an instance group
  result = api_instance.list_instance_group_managers(version, generation, instance_group_id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstanceGroupsApi->list_instance_group_managers: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **instance_group_id** | **String**| The instance group identifier | 

### Return type

[**InstanceGroupManagerCollection**](InstanceGroupManagerCollection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_instance_group_memberships

> InstanceGroupMembershipCollection list_instance_group_memberships(version, generation, instance_group_id)

List all memberships for the instance group

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstanceGroupsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
instance_group_id = 'instance_group_id_example' # String | The instance group identifier

begin
  #List all memberships for the instance group
  result = api_instance.list_instance_group_memberships(version, generation, instance_group_id)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstanceGroupsApi->list_instance_group_memberships: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **instance_group_id** | **String**| The instance group identifier | 

### Return type

[**InstanceGroupMembershipCollection**](InstanceGroupMembershipCollection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_instance_groups

> InstanceGroupCollection list_instance_groups(version, generation, opts)

List all instance groups

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstanceGroupsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
opts = {
  start: 'start_example', # String | A server-supplied token determining what resource to start the page on
  limit: 50 # Integer | The number of resources to return on a page
}

begin
  #List all instance groups
  result = api_instance.list_instance_groups(version, generation, opts)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstanceGroupsApi->list_instance_groups: #{e}"
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

[**InstanceGroupCollection**](InstanceGroupCollection.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_instance_group

> InstanceGroup update_instance_group(version, generation, id, instance_group_patch)

Update specified instance group

This request updates an instance group with the information provided instance group patch. The instance group patch object is structured in the same way as a retrieved instance group and contains only the information to be updated.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstanceGroupsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
id = 'id_example' # String | The instance group identifier
instance_group_patch = IbmCloudVpc::InstanceGroupPatch.new # InstanceGroupPatch | The instance group patch

begin
  #Update specified instance group
  result = api_instance.update_instance_group(version, generation, id, instance_group_patch)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstanceGroupsApi->update_instance_group: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **id** | **String**| The instance group identifier | 
 **instance_group_patch** | [**InstanceGroupPatch**](InstanceGroupPatch.md)| The instance group patch | 

### Return type

[**InstanceGroup**](InstanceGroup.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_instance_group_manager

> InstanceGroupManager update_instance_group_manager(version, generation, instance_group_id, id, instance_group_manager_patch)

Update specified instance group manager

This request updates an instance group manager with the information provided instance group manager patch.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstanceGroupsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
instance_group_id = 'instance_group_id_example' # String | The instance group identifier
id = 'id_example' # String | The instance group manager identifier
instance_group_manager_patch = IbmCloudVpc::InstanceGroupManagerPatch.new # InstanceGroupManagerPatch | The instance group manager patch

begin
  #Update specified instance group manager
  result = api_instance.update_instance_group_manager(version, generation, instance_group_id, id, instance_group_manager_patch)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstanceGroupsApi->update_instance_group_manager: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **instance_group_id** | **String**| The instance group identifier | 
 **id** | **String**| The instance group manager identifier | 
 **instance_group_manager_patch** | [**InstanceGroupManagerPatch**](InstanceGroupManagerPatch.md)| The instance group manager patch | 

### Return type

[**InstanceGroupManager**](InstanceGroupManager.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_instance_group_manager_policy

> InstanceGroupManagerPolicy update_instance_group_manager_policy(version, generation, instance_group_id, instance_group_manager_id, id, instance_group_manager_policy_patch)

Update specified instance group manager policy

This request updates an instance group manager policy.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstanceGroupsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
instance_group_id = 'instance_group_id_example' # String | The instance group identifier
instance_group_manager_id = 'instance_group_manager_id_example' # String | The instance group manager identifier
id = 'id_example' # String | The instance group manager policy identifier
instance_group_manager_policy_patch = IbmCloudVpc::InstanceGroupManagerPolicyPatch.new # InstanceGroupManagerPolicyPatch | The instance group manager policy patch

begin
  #Update specified instance group manager policy
  result = api_instance.update_instance_group_manager_policy(version, generation, instance_group_id, instance_group_manager_id, id, instance_group_manager_policy_patch)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstanceGroupsApi->update_instance_group_manager_policy: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **instance_group_id** | **String**| The instance group identifier | 
 **instance_group_manager_id** | **String**| The instance group manager identifier | 
 **id** | **String**| The instance group manager policy identifier | 
 **instance_group_manager_policy_patch** | [**InstanceGroupManagerPolicyPatch**](InstanceGroupManagerPolicyPatch.md)| The instance group manager policy patch | 

### Return type

[**InstanceGroupManagerPolicy**](InstanceGroupManagerPolicy.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_instance_group_membership

> InstanceGroupMembership update_instance_group_membership(version, generation, instance_group_id, id, instance_group_membership_patch)

Update specified instance group membership

This request updates an instance group membership with the information provided instance group membership patch.

### Example

```ruby
# load the gem
require 'ibm_cloud_vpc'
# setup authorization
IbmCloudVpc.configure do |config|
  # Configure OAuth2 access token for authorization: iamToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IbmCloudVpc::InstanceGroupsApi.new
version = 'version_example' # String | Requests the version of the API as of a date in the format `YYYY-MM-DD`. Any date up to the current date may be provided. Specify the current date to request the latest version.
generation = 56 # Integer | The infrastructure generation for the request. For the API behavior documented here, use `2`.
instance_group_id = 'instance_group_id_example' # String | The instance group identifier
id = 'id_example' # String | The instance group membership identifier
instance_group_membership_patch = IbmCloudVpc::InstanceGroupMembershipPatch.new # InstanceGroupMembershipPatch | The instance group membership patch

begin
  #Update specified instance group membership
  result = api_instance.update_instance_group_membership(version, generation, instance_group_id, id, instance_group_membership_patch)
  p result
rescue IbmCloudVpc::ApiError => e
  puts "Exception when calling InstanceGroupsApi->update_instance_group_membership: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version. | 
 **generation** | **Integer**| The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;. | 
 **instance_group_id** | **String**| The instance group identifier | 
 **id** | **String**| The instance group membership identifier | 
 **instance_group_membership_patch** | [**InstanceGroupMembershipPatch**](InstanceGroupMembershipPatch.md)| The instance group membership patch | 

### Return type

[**InstanceGroupMembership**](InstanceGroupMembership.md)

### Authorization

[iamToken](../README.md#iamToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

