# IbmCloudIam::ServiceIDGroupsApi

All URIs are relative to *https://iam.cloud.ibm.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_service_id_group**](ServiceIDGroupsApi.md#create_service_id_group) | **POST** /v1/serviceid_groups | Create a service ID group |
| [**delete_service_id_group**](ServiceIDGroupsApi.md#delete_service_id_group) | **DELETE** /v1/serviceid_groups/{id} | Delete a service ID group |
| [**get_service_id_group**](ServiceIDGroupsApi.md#get_service_id_group) | **GET** /v1/serviceid_groups/{id} | Get details of a service ID group |
| [**list_service_id_group**](ServiceIDGroupsApi.md#list_service_id_group) | **GET** /v1/serviceid_groups | List service ID groups |
| [**update_service_id_group**](ServiceIDGroupsApi.md#update_service_id_group) | **PUT** /v1/serviceid_groups/{id} | Update a service ID group |


## create_service_id_group

> <ServiceIdGroup> create_service_id_group(authorization, create_service_id_group_request)

Create a service ID group

Creates a service ID group for the given account ID

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::ServiceIDGroupsApi.new
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
create_service_id_group_request = IbmCloudIam::CreateServiceIdGroupRequest.new({account_id: 'account_id_example', name: 'name_example'}) # CreateServiceIdGroupRequest | Request to create a service ID Group.

begin
  # Create a service ID group
  result = api_instance.create_service_id_group(authorization, create_service_id_group_request)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling ServiceIDGroupsApi->create_service_id_group: #{e}"
end
```

#### Using the create_service_id_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceIdGroup>, Integer, Hash)> create_service_id_group_with_http_info(authorization, create_service_id_group_request)

```ruby
begin
  # Create a service ID group
  data, status_code, headers = api_instance.create_service_id_group_with_http_info(authorization, create_service_id_group_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceIdGroup>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling ServiceIDGroupsApi->create_service_id_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |
| **create_service_id_group_request** | [**CreateServiceIdGroupRequest**](CreateServiceIdGroupRequest.md) | Request to create a service ID Group. |  |

### Return type

[**ServiceIdGroup**](ServiceIdGroup.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_service_id_group

> delete_service_id_group(id, authorization)

Delete a service ID group

Delete a service ID group.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::ServiceIDGroupsApi.new
id = 'id_example' # String | Unique ID of the service ID group.
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.

begin
  # Delete a service ID group
  api_instance.delete_service_id_group(id, authorization)
rescue IbmCloudIam::ApiError => e
  puts "Error when calling ServiceIDGroupsApi->delete_service_id_group: #{e}"
end
```

#### Using the delete_service_id_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_service_id_group_with_http_info(id, authorization)

```ruby
begin
  # Delete a service ID group
  data, status_code, headers = api_instance.delete_service_id_group_with_http_info(id, authorization)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue IbmCloudIam::ApiError => e
  puts "Error when calling ServiceIDGroupsApi->delete_service_id_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID of the service ID group. |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_service_id_group

> <ServiceIdGroup> get_service_id_group(id, authorization)

Get details of a service ID group

Returns the details of a service ID group.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::ServiceIDGroupsApi.new
id = 'id_example' # String | Unique ID of the service ID group.
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.

begin
  # Get details of a service ID group
  result = api_instance.get_service_id_group(id, authorization)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling ServiceIDGroupsApi->get_service_id_group: #{e}"
end
```

#### Using the get_service_id_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceIdGroup>, Integer, Hash)> get_service_id_group_with_http_info(id, authorization)

```ruby
begin
  # Get details of a service ID group
  data, status_code, headers = api_instance.get_service_id_group_with_http_info(id, authorization)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceIdGroup>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling ServiceIDGroupsApi->get_service_id_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID of the service ID group. |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |

### Return type

[**ServiceIdGroup**](ServiceIdGroup.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_service_id_group

> <ServiceIdGroupList> list_service_id_group(authorization, opts)

List service ID groups

Returns a list of all service ID groups for the given account ID

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::ServiceIDGroupsApi.new
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
opts = {
  account_id: 'account_id_example' # String | Account ID of the service ID groups to query
}

begin
  # List service ID groups
  result = api_instance.list_service_id_group(authorization, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling ServiceIDGroupsApi->list_service_id_group: #{e}"
end
```

#### Using the list_service_id_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceIdGroupList>, Integer, Hash)> list_service_id_group_with_http_info(authorization, opts)

```ruby
begin
  # List service ID groups
  data, status_code, headers = api_instance.list_service_id_group_with_http_info(authorization, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceIdGroupList>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling ServiceIDGroupsApi->list_service_id_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |
| **account_id** | **String** | Account ID of the service ID groups to query | [optional] |

### Return type

[**ServiceIdGroupList**](ServiceIdGroupList.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_service_id_group

> <ServiceIdGroup> update_service_id_group(id, if_match, authorization, update_service_id_group_request)

Update a service ID group

Update a service ID group

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::ServiceIDGroupsApi.new
id = 'id_example' # String | Unique ID of the service ID group to be updated.
if_match = 'if_match_example' # String | Version of the service ID gorup to be updated. Specify the version that you retrieved when reading service ID group. This value helps identifying parallel usage of this API. Pass * to indicate to update any version available. This might result in stale updates.
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
update_service_id_group_request = IbmCloudIam::UpdateServiceIdGroupRequest.new({name: 'name_example'}) # UpdateServiceIdGroupRequest | Request to update service ID group.

begin
  # Update a service ID group
  result = api_instance.update_service_id_group(id, if_match, authorization, update_service_id_group_request)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling ServiceIDGroupsApi->update_service_id_group: #{e}"
end
```

#### Using the update_service_id_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceIdGroup>, Integer, Hash)> update_service_id_group_with_http_info(id, if_match, authorization, update_service_id_group_request)

```ruby
begin
  # Update a service ID group
  data, status_code, headers = api_instance.update_service_id_group_with_http_info(id, if_match, authorization, update_service_id_group_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceIdGroup>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling ServiceIDGroupsApi->update_service_id_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID of the service ID group to be updated. |  |
| **if_match** | **String** | Version of the service ID gorup to be updated. Specify the version that you retrieved when reading service ID group. This value helps identifying parallel usage of this API. Pass * to indicate to update any version available. This might result in stale updates. |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |
| **update_service_id_group_request** | [**UpdateServiceIdGroupRequest**](UpdateServiceIdGroupRequest.md) | Request to update service ID group. |  |

### Return type

[**ServiceIdGroup**](ServiceIdGroup.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

