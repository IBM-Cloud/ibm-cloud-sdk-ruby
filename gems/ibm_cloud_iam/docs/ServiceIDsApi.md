# IbmCloudIam::ServiceIDsApi

All URIs are relative to *https://iam.cloud.ibm.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_service_id**](ServiceIDsApi.md#create_service_id) | **POST** /v1/serviceids/ | Create a service ID |
| [**delete_service_id**](ServiceIDsApi.md#delete_service_id) | **DELETE** /v1/serviceids/{id} | Deletes a service ID and associated API keys |
| [**get_service_id**](ServiceIDsApi.md#get_service_id) | **GET** /v1/serviceids/{id} | Get details of a service ID |
| [**list_service_ids**](ServiceIDsApi.md#list_service_ids) | **GET** /v1/serviceids/ | List service IDs |
| [**lock_service_id**](ServiceIDsApi.md#lock_service_id) | **POST** /v1/serviceids/{id}/lock | Lock the service ID |
| [**unlock_service_id**](ServiceIDsApi.md#unlock_service_id) | **DELETE** /v1/serviceids/{id}/lock | Unlock the service ID |
| [**update_service_id**](ServiceIDsApi.md#update_service_id) | **PUT** /v1/serviceids/{id} | Update service ID |


## create_service_id

> <ServiceId> create_service_id(authorization, create_service_id_request, opts)

Create a service ID

Creates a service ID for an IBM Cloud account. Users can manage user API keys for themself, or service ID API keys for service IDs they have access to.  

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::ServiceIDsApi.new
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
create_service_id_request = IbmCloudIam::CreateServiceIdRequest.new({account_id: 'account_id_example', name: 'name_example'}) # CreateServiceIdRequest | Request to create a service ID.
opts = {
  show_group_id: 'show_group_id_example', # String | Defines if the service ID group ID is included in the response.
  entity_lock: 'entity_lock_example' # String | Indicates if the service ID is locked for further write operations. False by default.
}

begin
  # Create a service ID
  result = api_instance.create_service_id(authorization, create_service_id_request, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling ServiceIDsApi->create_service_id: #{e}"
end
```

#### Using the create_service_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceId>, Integer, Hash)> create_service_id_with_http_info(authorization, create_service_id_request, opts)

```ruby
begin
  # Create a service ID
  data, status_code, headers = api_instance.create_service_id_with_http_info(authorization, create_service_id_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceId>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling ServiceIDsApi->create_service_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |
| **create_service_id_request** | [**CreateServiceIdRequest**](CreateServiceIdRequest.md) | Request to create a service ID. |  |
| **show_group_id** | **String** | Defines if the service ID group ID is included in the response. | [optional] |
| **entity_lock** | **String** | Indicates if the service ID is locked for further write operations. False by default. | [optional][default to &#39;false&#39;] |

### Return type

[**ServiceId**](ServiceId.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_service_id

> delete_service_id(id, authorization)

Deletes a service ID and associated API keys

Deletes a service ID and all API keys associated to it. Before deleting the service ID, all associated API keys are deleted. In case a Delete Conflict (status code 409) a retry of the request may help as the service ID is only deleted if the associated API keys were successfully deleted before. Users can manage user API keys for themself, or service ID API keys for service IDs they have access to.  

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::ServiceIDsApi.new
id = 'id_example' # String | Unique ID of the service ID.
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.

begin
  # Deletes a service ID and associated API keys
  api_instance.delete_service_id(id, authorization)
rescue IbmCloudIam::ApiError => e
  puts "Error when calling ServiceIDsApi->delete_service_id: #{e}"
end
```

#### Using the delete_service_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_service_id_with_http_info(id, authorization)

```ruby
begin
  # Deletes a service ID and associated API keys
  data, status_code, headers = api_instance.delete_service_id_with_http_info(id, authorization)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue IbmCloudIam::ApiError => e
  puts "Error when calling ServiceIDsApi->delete_service_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID of the service ID. |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_service_id

> <ServiceId> get_service_id(id, authorization, opts)

Get details of a service ID

Returns the details of a service ID. Users can manage user API keys for themself, or service ID API keys for service IDs they have access to. Note: apikey details are only included in the response when creating a Service ID with an api key.  

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::ServiceIDsApi.new
id = 'id_example' # String | Unique ID of the service ID.
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
opts = {
  include_history: true, # Boolean | Defines if the entity history is included in the response.
  include_activity: true, # Boolean | Defines if the entity's activity is included in the response. Retrieving activity data is an expensive operation, so only request this when needed.
  show_group_id: 'show_group_id_example' # String | Defines if the service ID group ID is included in the response.
}

begin
  # Get details of a service ID
  result = api_instance.get_service_id(id, authorization, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling ServiceIDsApi->get_service_id: #{e}"
end
```

#### Using the get_service_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceId>, Integer, Hash)> get_service_id_with_http_info(id, authorization, opts)

```ruby
begin
  # Get details of a service ID
  data, status_code, headers = api_instance.get_service_id_with_http_info(id, authorization, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceId>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling ServiceIDsApi->get_service_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID of the service ID. |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |
| **include_history** | **Boolean** | Defines if the entity history is included in the response. | [optional][default to false] |
| **include_activity** | **Boolean** | Defines if the entity&#39;s activity is included in the response. Retrieving activity data is an expensive operation, so only request this when needed. | [optional][default to false] |
| **show_group_id** | **String** | Defines if the service ID group ID is included in the response. | [optional] |

### Return type

[**ServiceId**](ServiceId.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_service_ids

> <ServiceIdList> list_service_ids(authorization, opts)

List service IDs

Returns a list of service IDs. Users can manage user API keys for themself, or service ID API keys for service IDs they have access to. Note: apikey details are only included in the response when creating a Service ID with an api key.  

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::ServiceIDsApi.new
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
opts = {
  account_id: 'account_id_example', # String | Account ID of the service ID(s) to query. This parameter is required (unless using a pagetoken).
  group_id: 'group_id_example', # String | Group ID of the service ID(s) to query. If this parameter is not provided the default group is applied.
  name: 'name_example', # String | Name of the service ID(s) to query. Optional.20 items per page. Valid range is 1 to 100.
  pagesize: 56, # Integer | Optional size of a single page. Default is 20 items per page. Valid range is 1 to 100.
  pagetoken: 'pagetoken_example', # String | Optional Prev or Next page token returned from a previous query execution. Default is start with first page.
  sort: 'sort_example', # String | Optional sort property, valid values are name, description, created_at and modified_at. If specified, the items are sorted by the value of this property.
  order: 'asc', # String | Optional sort order, valid values are asc and desc. Default: asc.
  include_history: true, # Boolean | Defines if the entity history is included in the response.
  filter: 'filter_example', # String | An optional filter query parameter used to refine the results of the search operation. For more information see [Filtering list results](#filter-list-results) section.
  show_group_id: 'show_group_id_example' # String | Defines if the service ID group ID is included in the response.
}

begin
  # List service IDs
  result = api_instance.list_service_ids(authorization, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling ServiceIDsApi->list_service_ids: #{e}"
end
```

#### Using the list_service_ids_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceIdList>, Integer, Hash)> list_service_ids_with_http_info(authorization, opts)

```ruby
begin
  # List service IDs
  data, status_code, headers = api_instance.list_service_ids_with_http_info(authorization, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceIdList>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling ServiceIDsApi->list_service_ids_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |
| **account_id** | **String** | Account ID of the service ID(s) to query. This parameter is required (unless using a pagetoken). | [optional] |
| **group_id** | **String** | Group ID of the service ID(s) to query. If this parameter is not provided the default group is applied. | [optional] |
| **name** | **String** | Name of the service ID(s) to query. Optional.20 items per page. Valid range is 1 to 100. | [optional] |
| **pagesize** | **Integer** | Optional size of a single page. Default is 20 items per page. Valid range is 1 to 100. | [optional] |
| **pagetoken** | **String** | Optional Prev or Next page token returned from a previous query execution. Default is start with first page. | [optional] |
| **sort** | **String** | Optional sort property, valid values are name, description, created_at and modified_at. If specified, the items are sorted by the value of this property. | [optional] |
| **order** | **String** | Optional sort order, valid values are asc and desc. Default: asc. | [optional][default to &#39;asc&#39;] |
| **include_history** | **Boolean** | Defines if the entity history is included in the response. | [optional][default to false] |
| **filter** | **String** | An optional filter query parameter used to refine the results of the search operation. For more information see [Filtering list results](#filter-list-results) section. | [optional] |
| **show_group_id** | **String** | Defines if the service ID group ID is included in the response. | [optional] |

### Return type

[**ServiceIdList**](ServiceIdList.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## lock_service_id

> lock_service_id(id, authorization)

Lock the service ID

Locks a service ID by ID. Users can manage user API keys for themself, or service ID API keys for service IDs they have access to.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::ServiceIDsApi.new
id = 'id_example' # String | Unique ID of the service ID.
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.

begin
  # Lock the service ID
  api_instance.lock_service_id(id, authorization)
rescue IbmCloudIam::ApiError => e
  puts "Error when calling ServiceIDsApi->lock_service_id: #{e}"
end
```

#### Using the lock_service_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> lock_service_id_with_http_info(id, authorization)

```ruby
begin
  # Lock the service ID
  data, status_code, headers = api_instance.lock_service_id_with_http_info(id, authorization)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue IbmCloudIam::ApiError => e
  puts "Error when calling ServiceIDsApi->lock_service_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID of the service ID. |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## unlock_service_id

> unlock_service_id(id, authorization)

Unlock the service ID

Unlocks a service ID by ID. Users can manage user API keys for themself, or service ID API keys for service IDs they have access to.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::ServiceIDsApi.new
id = 'id_example' # String | Unique ID of the service ID.
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.

begin
  # Unlock the service ID
  api_instance.unlock_service_id(id, authorization)
rescue IbmCloudIam::ApiError => e
  puts "Error when calling ServiceIDsApi->unlock_service_id: #{e}"
end
```

#### Using the unlock_service_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> unlock_service_id_with_http_info(id, authorization)

```ruby
begin
  # Unlock the service ID
  data, status_code, headers = api_instance.unlock_service_id_with_http_info(id, authorization)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue IbmCloudIam::ApiError => e
  puts "Error when calling ServiceIDsApi->unlock_service_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID of the service ID. |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## update_service_id

> <ServiceId> update_service_id(id, if_match, authorization, update_service_id_request, opts)

Update service ID

Updates properties of a service ID. This does NOT affect existing access tokens. Their token content will stay unchanged until the access token is refreshed. To update a service ID, pass the property to be modified. To delete one property's value, pass the property with an empty value \"\".Users can manage user API keys for themself, or service ID API keys for service IDs they have access to. Note: apikey details are only included in the response when creating a Service ID with an apikey.  

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::ServiceIDsApi.new
id = 'id_example' # String | Unique ID of the service ID to be updated.
if_match = 'if_match_example' # String | Version of the service ID to be updated. Specify the version that you retrieved as entity_tag (ETag header) when reading the service ID. This value helps identifying parallel usage of this API. Pass * to indicate to update any version available. This might result in stale updates.
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
update_service_id_request = IbmCloudIam::UpdateServiceIdRequest.new # UpdateServiceIdRequest | Request to update a service ID.
opts = {
  show_group_id: 'show_group_id_example' # String | Defines if the service ID group ID is included in the response.
}

begin
  # Update service ID
  result = api_instance.update_service_id(id, if_match, authorization, update_service_id_request, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling ServiceIDsApi->update_service_id: #{e}"
end
```

#### Using the update_service_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceId>, Integer, Hash)> update_service_id_with_http_info(id, if_match, authorization, update_service_id_request, opts)

```ruby
begin
  # Update service ID
  data, status_code, headers = api_instance.update_service_id_with_http_info(id, if_match, authorization, update_service_id_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceId>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling ServiceIDsApi->update_service_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID of the service ID to be updated. |  |
| **if_match** | **String** | Version of the service ID to be updated. Specify the version that you retrieved as entity_tag (ETag header) when reading the service ID. This value helps identifying parallel usage of this API. Pass * to indicate to update any version available. This might result in stale updates. |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |
| **update_service_id_request** | [**UpdateServiceIdRequest**](UpdateServiceIdRequest.md) | Request to update a service ID. |  |
| **show_group_id** | **String** | Defines if the service ID group ID is included in the response. | [optional] |

### Return type

[**ServiceId**](ServiceId.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

