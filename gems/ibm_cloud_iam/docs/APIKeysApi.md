# IbmCloudIam::APIKeysApi

All URIs are relative to *https://iam.cloud.ibm.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_api_key**](APIKeysApi.md#create_api_key) | **POST** /v1/apikeys | Create an API key |
| [**delete_api_key**](APIKeysApi.md#delete_api_key) | **DELETE** /v1/apikeys/{id} | Deletes an API key |
| [**disable_api_key**](APIKeysApi.md#disable_api_key) | **POST** /v1/apikeys/{id}/disable | Disable the API key |
| [**enable_api_key**](APIKeysApi.md#enable_api_key) | **DELETE** /v1/apikeys/{id}/disable | Enable the API key |
| [**get_api_key**](APIKeysApi.md#get_api_key) | **GET** /v1/apikeys/{id} | Get details of an API key |
| [**get_api_keys_details**](APIKeysApi.md#get_api_keys_details) | **GET** /v1/apikeys/details | Get details of an API key by its value. |
| [**list_api_keys**](APIKeysApi.md#list_api_keys) | **GET** /v1/apikeys | Get API keys for a given service or user IAM ID and account ID |
| [**lock_api_key**](APIKeysApi.md#lock_api_key) | **POST** /v1/apikeys/{id}/lock | Lock the API key |
| [**unlock_api_key**](APIKeysApi.md#unlock_api_key) | **DELETE** /v1/apikeys/{id}/lock | Unlock the API key |
| [**update_api_key**](APIKeysApi.md#update_api_key) | **PUT** /v1/apikeys/{id} | Updates an API key |


## create_api_key

> <ApiKey> create_api_key(authorization, create_api_key_request, opts)

Create an API key

Creates an API key for a UserID or service ID. Users can manage user API keys for themself, or service ID API keys for service IDs they have access to.  

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::APIKeysApi.new
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
create_api_key_request = IbmCloudIam::CreateApiKeyRequest.new({name: 'name_example', iam_id: 'iam_id_example'}) # CreateApiKeyRequest | Request to create an API key.
opts = {
  entity_lock: 'entity_lock_example', # String | Indicates if the API key is locked for further write operations. False by default.
  entity_disable: 'entity_disable_example' # String | Indicates if the API key is disabled. False by default.
}

begin
  # Create an API key
  result = api_instance.create_api_key(authorization, create_api_key_request, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling APIKeysApi->create_api_key: #{e}"
end
```

#### Using the create_api_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiKey>, Integer, Hash)> create_api_key_with_http_info(authorization, create_api_key_request, opts)

```ruby
begin
  # Create an API key
  data, status_code, headers = api_instance.create_api_key_with_http_info(authorization, create_api_key_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiKey>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling APIKeysApi->create_api_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |
| **create_api_key_request** | [**CreateApiKeyRequest**](CreateApiKeyRequest.md) | Request to create an API key. |  |
| **entity_lock** | **String** | Indicates if the API key is locked for further write operations. False by default. | [optional][default to &#39;false&#39;] |
| **entity_disable** | **String** | Indicates if the API key is disabled. False by default. | [optional][default to &#39;false&#39;] |

### Return type

[**ApiKey**](ApiKey.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_api_key

> delete_api_key(id, authorization)

Deletes an API key

Deletes an API key. Existing tokens will remain valid until expired. Users can manage user API keys for themself, or service ID API keys for service IDs they have access to.  

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::APIKeysApi.new
id = 'id_example' # String | Unique ID of the API key.
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.

begin
  # Deletes an API key
  api_instance.delete_api_key(id, authorization)
rescue IbmCloudIam::ApiError => e
  puts "Error when calling APIKeysApi->delete_api_key: #{e}"
end
```

#### Using the delete_api_key_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_api_key_with_http_info(id, authorization)

```ruby
begin
  # Deletes an API key
  data, status_code, headers = api_instance.delete_api_key_with_http_info(id, authorization)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue IbmCloudIam::ApiError => e
  puts "Error when calling APIKeysApi->delete_api_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID of the API key. |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## disable_api_key

> disable_api_key(id, authorization)

Disable the API key

Disable an API key. Users can manage user API keys for themself, or service ID API keys for service IDs they have access to.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::APIKeysApi.new
id = 'id_example' # String | Unique ID of the API key.
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.

begin
  # Disable the API key
  api_instance.disable_api_key(id, authorization)
rescue IbmCloudIam::ApiError => e
  puts "Error when calling APIKeysApi->disable_api_key: #{e}"
end
```

#### Using the disable_api_key_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> disable_api_key_with_http_info(id, authorization)

```ruby
begin
  # Disable the API key
  data, status_code, headers = api_instance.disable_api_key_with_http_info(id, authorization)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue IbmCloudIam::ApiError => e
  puts "Error when calling APIKeysApi->disable_api_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID of the API key. |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## enable_api_key

> enable_api_key(id, authorization)

Enable the API key

Enable an API key. Users can manage user API keys for themself, or service ID API keys for service IDs they have access to.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::APIKeysApi.new
id = 'id_example' # String | Unique ID of the API key.
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.

begin
  # Enable the API key
  api_instance.enable_api_key(id, authorization)
rescue IbmCloudIam::ApiError => e
  puts "Error when calling APIKeysApi->enable_api_key: #{e}"
end
```

#### Using the enable_api_key_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> enable_api_key_with_http_info(id, authorization)

```ruby
begin
  # Enable the API key
  data, status_code, headers = api_instance.enable_api_key_with_http_info(id, authorization)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue IbmCloudIam::ApiError => e
  puts "Error when calling APIKeysApi->enable_api_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID of the API key. |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_api_key

> <ApiKey> get_api_key(id, authorization, opts)

Get details of an API key

Returns the details of an API key. Users can manage user API keys for themself, or service ID API keys for service IDs they have access to.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::APIKeysApi.new
id = 'id_example' # String | Unique ID of the API key.
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
opts = {
  include_history: true, # Boolean | Defines if the entity history is included in the response.
  include_activity: true # Boolean | Defines if the entity's activity is included in the response. Retrieving activity data is an expensive operation, so only request this when needed.
}

begin
  # Get details of an API key
  result = api_instance.get_api_key(id, authorization, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling APIKeysApi->get_api_key: #{e}"
end
```

#### Using the get_api_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiKey>, Integer, Hash)> get_api_key_with_http_info(id, authorization, opts)

```ruby
begin
  # Get details of an API key
  data, status_code, headers = api_instance.get_api_key_with_http_info(id, authorization, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiKey>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling APIKeysApi->get_api_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID of the API key. |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |
| **include_history** | **Boolean** | Defines if the entity history is included in the response. | [optional][default to false] |
| **include_activity** | **Boolean** | Defines if the entity&#39;s activity is included in the response. Retrieving activity data is an expensive operation, so only request this when needed. | [optional][default to false] |

### Return type

[**ApiKey**](ApiKey.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_api_keys_details

> <ApiKey> get_api_keys_details(authorization, opts)

Get details of an API key by its value.

Returns the details of an API key by its value. Users can manage user API keys for themself, or service ID API keys for service IDs they have access to.  

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::APIKeysApi.new
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
opts = {
  iam_api_key: 'iam_api_key_example', # String | API key value.
  include_history: true # Boolean | Defines if the entity history is included in the response.
}

begin
  # Get details of an API key by its value.
  result = api_instance.get_api_keys_details(authorization, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling APIKeysApi->get_api_keys_details: #{e}"
end
```

#### Using the get_api_keys_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiKey>, Integer, Hash)> get_api_keys_details_with_http_info(authorization, opts)

```ruby
begin
  # Get details of an API key by its value.
  data, status_code, headers = api_instance.get_api_keys_details_with_http_info(authorization, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiKey>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling APIKeysApi->get_api_keys_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |
| **iam_api_key** | **String** | API key value. | [optional] |
| **include_history** | **Boolean** | Defines if the entity history is included in the response. | [optional][default to false] |

### Return type

[**ApiKey**](ApiKey.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_api_keys

> <ApiKeyList> list_api_keys(authorization, opts)

Get API keys for a given service or user IAM ID and account ID

Returns the list of API key details for a given service or user IAM ID and account ID. Users can manage user API keys for themself, or service ID API keys for service IDs they have access to.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::APIKeysApi.new
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
opts = {
  account_id: 'account_id_example', # String | Account ID of the API keys to query. If a service IAM ID is specified in iam_id then account_id must match the account of the IAM ID. If a user IAM ID is specified in iam_id then then account_id must match the account of the Authorization token.
  iam_id: 'iam_id_example', # String | IAM ID of the API keys to be queried. The IAM ID may be that of a user or a service. For a user IAM ID iam_id must match the Authorization token.
  pagesize: 56, # Integer | Optional size of a single page. Default is 20 items per page. Valid range is 1 to 100.
  pagetoken: 'pagetoken_example', # String | Optional Prev or Next page token returned from a previous query execution. Default is start with first page.
  scope: 'entity', # String | Optional parameter to define the scope of the queried API keys. Can be 'entity' (default) or 'account'.
  type: 'user', # String | Optional parameter to filter the type of the queried API keys. Can be 'user' or 'serviceid'.
  sort: 'sort_example', # String | Optional sort property, valid values are name, description, created_at and created_by. If specified, the items are sorted by the value of this property.
  order: 'asc', # String | Optional sort order, valid values are asc and desc. Default: asc.
  include_history: true, # Boolean | Defines if the entity history is included in the response.
  filter: 'filter_example', # String | An optional filter query parameter used to refine the results of the search operation. For more information see [Filtering list results](#filter-list-results) section.
  group_id: 'group_id_example' # String | Optional group ID of the service ID(s) to which the searched API keys are bound. If this parameter is not provided the default group is applied on service ID API keys. For user API keys this parameter is ignored as they always belong to the default group.
}

begin
  # Get API keys for a given service or user IAM ID and account ID
  result = api_instance.list_api_keys(authorization, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling APIKeysApi->list_api_keys: #{e}"
end
```

#### Using the list_api_keys_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiKeyList>, Integer, Hash)> list_api_keys_with_http_info(authorization, opts)

```ruby
begin
  # Get API keys for a given service or user IAM ID and account ID
  data, status_code, headers = api_instance.list_api_keys_with_http_info(authorization, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiKeyList>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling APIKeysApi->list_api_keys_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |
| **account_id** | **String** | Account ID of the API keys to query. If a service IAM ID is specified in iam_id then account_id must match the account of the IAM ID. If a user IAM ID is specified in iam_id then then account_id must match the account of the Authorization token. | [optional] |
| **iam_id** | **String** | IAM ID of the API keys to be queried. The IAM ID may be that of a user or a service. For a user IAM ID iam_id must match the Authorization token. | [optional] |
| **pagesize** | **Integer** | Optional size of a single page. Default is 20 items per page. Valid range is 1 to 100. | [optional] |
| **pagetoken** | **String** | Optional Prev or Next page token returned from a previous query execution. Default is start with first page. | [optional] |
| **scope** | **String** | Optional parameter to define the scope of the queried API keys. Can be &#39;entity&#39; (default) or &#39;account&#39;. | [optional][default to &#39;entity&#39;] |
| **type** | **String** | Optional parameter to filter the type of the queried API keys. Can be &#39;user&#39; or &#39;serviceid&#39;. | [optional] |
| **sort** | **String** | Optional sort property, valid values are name, description, created_at and created_by. If specified, the items are sorted by the value of this property. | [optional] |
| **order** | **String** | Optional sort order, valid values are asc and desc. Default: asc. | [optional][default to &#39;asc&#39;] |
| **include_history** | **Boolean** | Defines if the entity history is included in the response. | [optional][default to false] |
| **filter** | **String** | An optional filter query parameter used to refine the results of the search operation. For more information see [Filtering list results](#filter-list-results) section. | [optional] |
| **group_id** | **String** | Optional group ID of the service ID(s) to which the searched API keys are bound. If this parameter is not provided the default group is applied on service ID API keys. For user API keys this parameter is ignored as they always belong to the default group. | [optional] |

### Return type

[**ApiKeyList**](ApiKeyList.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## lock_api_key

> lock_api_key(id, authorization)

Lock the API key

Locks an API key by ID. Users can manage user API keys for themself, or service ID API keys for service IDs they have access to.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::APIKeysApi.new
id = 'id_example' # String | Unique ID of the API key.
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.

begin
  # Lock the API key
  api_instance.lock_api_key(id, authorization)
rescue IbmCloudIam::ApiError => e
  puts "Error when calling APIKeysApi->lock_api_key: #{e}"
end
```

#### Using the lock_api_key_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> lock_api_key_with_http_info(id, authorization)

```ruby
begin
  # Lock the API key
  data, status_code, headers = api_instance.lock_api_key_with_http_info(id, authorization)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue IbmCloudIam::ApiError => e
  puts "Error when calling APIKeysApi->lock_api_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID of the API key. |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## unlock_api_key

> unlock_api_key(id, authorization)

Unlock the API key

Unlocks an API key by ID. Users can manage user API keys for themself, or service ID API keys for service IDs they have access to.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::APIKeysApi.new
id = 'id_example' # String | Unique ID of the API key.
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.

begin
  # Unlock the API key
  api_instance.unlock_api_key(id, authorization)
rescue IbmCloudIam::ApiError => e
  puts "Error when calling APIKeysApi->unlock_api_key: #{e}"
end
```

#### Using the unlock_api_key_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> unlock_api_key_with_http_info(id, authorization)

```ruby
begin
  # Unlock the API key
  data, status_code, headers = api_instance.unlock_api_key_with_http_info(id, authorization)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue IbmCloudIam::ApiError => e
  puts "Error when calling APIKeysApi->unlock_api_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID of the API key. |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## update_api_key

> <ApiKey> update_api_key(id, if_match, authorization, update_api_key_request)

Updates an API key

Updates properties of an API key. This does NOT affect existing access tokens. Their token content will stay unchanged until the access token is refreshed. To update an API key, pass the property to be modified. To delete one property's value, pass the property with an empty value \"\". Users can manage user API keys for themself, or service ID API keys for service IDs they have access to.  

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::APIKeysApi.new
id = 'id_example' # String | Unique ID of the API key to be updated.
if_match = 'if_match_example' # String | Version of the API key to be updated. Specify the version that you retrieved when reading the API key. This value helps identifying parallel usage of this API. Pass * to indicate to update any version available. This might result in stale updates. 
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
update_api_key_request = IbmCloudIam::UpdateApiKeyRequest.new # UpdateApiKeyRequest | Request to update an API key.

begin
  # Updates an API key
  result = api_instance.update_api_key(id, if_match, authorization, update_api_key_request)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling APIKeysApi->update_api_key: #{e}"
end
```

#### Using the update_api_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiKey>, Integer, Hash)> update_api_key_with_http_info(id, if_match, authorization, update_api_key_request)

```ruby
begin
  # Updates an API key
  data, status_code, headers = api_instance.update_api_key_with_http_info(id, if_match, authorization, update_api_key_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiKey>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling APIKeysApi->update_api_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID of the API key to be updated. |  |
| **if_match** | **String** | Version of the API key to be updated. Specify the version that you retrieved when reading the API key. This value helps identifying parallel usage of this API. Pass * to indicate to update any version available. This might result in stale updates.  |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |
| **update_api_key_request** | [**UpdateApiKeyRequest**](UpdateApiKeyRequest.md) | Request to update an API key. |  |

### Return type

[**ApiKey**](ApiKey.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

