# IbmCloudIam::IdentityOperationsApi

All URIs are relative to *https://iam.cloud.ibm.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_api_key**](IdentityOperationsApi.md#create_api_key) | **POST** /v1/apikeys | Create an API key
[**create_service_id**](IdentityOperationsApi.md#create_service_id) | **POST** /v1/serviceids/ | Create a service ID
[**delete_api_key**](IdentityOperationsApi.md#delete_api_key) | **DELETE** /v1/apikeys/{id} | Deletes an API key
[**delete_service_id**](IdentityOperationsApi.md#delete_service_id) | **DELETE** /v1/serviceids/{id} | Deletes a service ID and associated API keys
[**get_api_key**](IdentityOperationsApi.md#get_api_key) | **GET** /v1/apikeys/{id} | Get details of an API key
[**get_api_keys_details**](IdentityOperationsApi.md#get_api_keys_details) | **GET** /v1/apikeys/details | Get details of an API key by its value
[**get_service_id**](IdentityOperationsApi.md#get_service_id) | **GET** /v1/serviceids/{id} | Get details of a service ID
[**list_api_keys**](IdentityOperationsApi.md#list_api_keys) | **GET** /v1/apikeys | Get API keys for a given service or user IAM ID and account ID
[**list_service_ids**](IdentityOperationsApi.md#list_service_ids) | **GET** /v1/serviceids/ | List service IDs
[**lock_api_key**](IdentityOperationsApi.md#lock_api_key) | **POST** /v1/apikeys/{id}/lock | Lock the API key
[**lock_service_id**](IdentityOperationsApi.md#lock_service_id) | **POST** /v1/serviceids/{id}/lock | Lock the service ID
[**unlock_api_key**](IdentityOperationsApi.md#unlock_api_key) | **DELETE** /v1/apikeys/{id}/lock | Unlock the API key
[**unlock_service_id**](IdentityOperationsApi.md#unlock_service_id) | **DELETE** /v1/serviceids/{id}/lock | Unlock the service ID
[**update_api_key**](IdentityOperationsApi.md#update_api_key) | **PUT** /v1/apikeys/{id} | Updates an API key
[**update_service_id**](IdentityOperationsApi.md#update_service_id) | **PUT** /v1/serviceids/{id} | Update service ID



## create_api_key

> ApiKey create_api_key(create_api_key_request, opts)

Create an API key

Creates an API key for a UserID or service ID. Users can manage user API keys for themself, or service ID API keys for  service IDs that are bound to an entity they have access to.   

### Example

```ruby
# load the gem
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::IdentityOperationsApi.new
create_api_key_request = IbmCloudIam::CreateApiKeyRequest.new # CreateApiKeyRequest | Request to create an API key
opts = {
  authorization: 'authorization_example', # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Please make sure that the provided token has the required authority for the request.
  entity_lock: 'false' # String | Indicates if the API key is locked for further write operations. False by default.
}

begin
  #Create an API key
  result = api_instance.create_api_key(create_api_key_request, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Exception when calling IdentityOperationsApi->create_api_key: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_api_key_request** | [**CreateApiKeyRequest**](CreateApiKeyRequest.md)| Request to create an API key | 
 **authorization** | **String**| Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request. | [optional] 
 **entity_lock** | **String**| Indicates if the API key is locked for further write operations. False by default. | [optional] [default to &#39;false&#39;]

### Return type

[**ApiKey**](ApiKey.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_service_id

> ServiceId create_service_id(create_service_id_request, opts)

Create a service ID

Creates a service ID for an IBM Cloud account. Users can manage user API keys for themself, or service ID API keys for service IDs that are bound to an entity they have access to.   

### Example

```ruby
# load the gem
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::IdentityOperationsApi.new
create_service_id_request = IbmCloudIam::CreateServiceIdRequest.new # CreateServiceIdRequest | Request to create a service ID
opts = {
  authorization: 'authorization_example', # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Please make sure that the provided token has the required authority for the request.
  entity_lock: 'false' # String | Indicates if the service ID is locked for further write operations. False by default.
}

begin
  #Create a service ID
  result = api_instance.create_service_id(create_service_id_request, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Exception when calling IdentityOperationsApi->create_service_id: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_service_id_request** | [**CreateServiceIdRequest**](CreateServiceIdRequest.md)| Request to create a service ID | 
 **authorization** | **String**| Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request. | [optional] 
 **entity_lock** | **String**| Indicates if the service ID is locked for further write operations. False by default. | [optional] [default to &#39;false&#39;]

### Return type

[**ServiceId**](ServiceId.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_api_key

> delete_api_key(id, opts)

Deletes an API key

Deletes an API key. Existing tokens will remain valid until expired. Refresh tokens  will not work any more for this API key. Users can manage user API keys for themself, or service ID API  keys for service IDs that are bound to an entity they have access  to.   

### Example

```ruby
# load the gem
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::IdentityOperationsApi.new
id = 'id_example' # String | Unique ID of the API key.
opts = {
  authorization: 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Please make sure that the provided token has the required authority for the request.
}

begin
  #Deletes an API key
  api_instance.delete_api_key(id, opts)
rescue IbmCloudIam::ApiError => e
  puts "Exception when calling IdentityOperationsApi->delete_api_key: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Unique ID of the API key. | 
 **authorization** | **String**| Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request. | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_service_id

> delete_service_id(id, opts)

Deletes a service ID and associated API keys

Deletes a service ID and all API keys associated to it. Before deleting the service ID, all associated API keys are deleted. In case a Delete Conflict (status code 409) a retry of the request may help as the service ID is only deleted if the associated API keys were successfully deleted before. Users can manage user API keys for themself, or service ID API keys for service IDs that are bound to an entity they have access to.   

### Example

```ruby
# load the gem
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::IdentityOperationsApi.new
id = 'id_example' # String | Unique ID of the service ID.
opts = {
  authorization: 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Please make sure that the provided token has the required authority for the request.
}

begin
  #Deletes a service ID and associated API keys
  api_instance.delete_service_id(id, opts)
rescue IbmCloudIam::ApiError => e
  puts "Exception when calling IdentityOperationsApi->delete_service_id: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Unique ID of the service ID. | 
 **authorization** | **String**| Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request. | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_api_key

> ApiKey get_api_key(id, opts)

Get details of an API key

Returns the details of an API key. Users can manage user API keys for themself, or service ID API keys for  service IDs that are bound to an entity they have access to. In case of  service IDs and their API keys, a user must be either an account owner,  a IBM Cloud org manager or IBM Cloud space developer in order to manage  service IDs of the entity.

### Example

```ruby
# load the gem
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::IdentityOperationsApi.new
id = 'id_example' # String | Unique ID of the API key.
opts = {
  include_history: false, # Boolean | Defines if the entity history is included in the response.
  authorization: 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Please make sure that the provided token has the required authority for the request.
}

begin
  #Get details of an API key
  result = api_instance.get_api_key(id, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Exception when calling IdentityOperationsApi->get_api_key: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Unique ID of the API key. | 
 **include_history** | **Boolean**| Defines if the entity history is included in the response. | [optional] [default to false]
 **authorization** | **String**| Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request. | [optional] 

### Return type

[**ApiKey**](ApiKey.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_api_keys_details

> ApiKey get_api_keys_details(opts)

Get details of an API key by its value

Returns the details of an API key by its value. Users can manage user API keys for themself, or service ID API keys  for service IDs that are bound to an entity they have access to.   

### Example

```ruby
# load the gem
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::IdentityOperationsApi.new
opts = {
  iam_api_key: 'iam_api_key_example', # String | API key value.
  include_history: false, # Boolean | Defines if the entity history is included in the response
  authorization: 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Please make sure that the provided token has the required authority for the request.
}

begin
  #Get details of an API key by its value
  result = api_instance.get_api_keys_details(opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Exception when calling IdentityOperationsApi->get_api_keys_details: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **iam_api_key** | **String**| API key value. | [optional] 
 **include_history** | **Boolean**| Defines if the entity history is included in the response | [optional] [default to false]
 **authorization** | **String**| Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request. | [optional] 

### Return type

[**ApiKey**](ApiKey.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_service_id

> ServiceId get_service_id(id, opts)

Get details of a service ID

Returns the details of a service ID. Users can manage user API keys for themself, or service ID API keys for service IDs that are bound to an entity they have access to.   

### Example

```ruby
# load the gem
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::IdentityOperationsApi.new
id = 'id_example' # String | Unique ID of the service ID.
opts = {
  authorization: 'authorization_example', # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Please make sure that the provided token has the required authority for the request.
  include_history: false # Boolean | Defines if the entity history is included in the response.
}

begin
  #Get details of a service ID
  result = api_instance.get_service_id(id, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Exception when calling IdentityOperationsApi->get_service_id: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Unique ID of the service ID. | 
 **authorization** | **String**| Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request. | [optional] 
 **include_history** | **Boolean**| Defines if the entity history is included in the response. | [optional] [default to false]

### Return type

[**ServiceId**](ServiceId.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_api_keys

> ApiKeyList list_api_keys(opts)

Get API keys for a given service or user IAM ID and account ID

Returns the list of API key details for a given service or user IAM ID and account ID. Users can manage user API keys for themself, or service ID API keys for  service IDs that are bound to an entity they have access to. In case of  service IDs and their API keys, a user must be either an account owner,  a IBM Cloud org manager or IBM Cloud space developer in order to manage  service IDs of the entity.

### Example

```ruby
# load the gem
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::IdentityOperationsApi.new
opts = {
  account_id: 'account_id_example', # String | Account ID of the API keys(s) to query. If a service IAM ID is specified in iam_id then account_id must match the account of the IAM ID. If a user IAM ID is specified in iam_id then then account_id must match the account of the Authorization token.
  iam_id: 'iam_id_example', # String | IAM ID of the API key(s) to be queried. The IAM ID may be that of a user or a service. For a user IAM ID iam_id must match the Authorization token.
  pagesize: 56, # Integer | Optional size of a single page. Default is 20 items per page. Valid range is 1 to 100.
  pagetoken: 'pagetoken_example', # String | Optional Prev or Next page token returned from a previous query execution. Default is start with first page.
  scope: 'entity', # String | Optional parameter to define the scope of the queried API Keys. Can be 'entity' (default) or 'account'.
  type: 'type_example', # String | Optional parameter to filter the type of the queried API Keys. Can be 'user' or 'serviceid'.
  sort: 'sort_example', # String | Optional sort property, valid values are name, description, created_at and created_by. If specified, the items are sorted by the value of this property.
  order: 'asc', # String | Optional sort order, valid values are asc and desc. Default: asc.
  include_history: false, # Boolean | Defines if the entity history is included in the response.
  authorization: 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Please make sure that the provided token has the required authority for the request.
}

begin
  #Get API keys for a given service or user IAM ID and account ID
  result = api_instance.list_api_keys(opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Exception when calling IdentityOperationsApi->list_api_keys: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID of the API keys(s) to query. If a service IAM ID is specified in iam_id then account_id must match the account of the IAM ID. If a user IAM ID is specified in iam_id then then account_id must match the account of the Authorization token. | [optional] 
 **iam_id** | **String**| IAM ID of the API key(s) to be queried. The IAM ID may be that of a user or a service. For a user IAM ID iam_id must match the Authorization token. | [optional] 
 **pagesize** | **Integer**| Optional size of a single page. Default is 20 items per page. Valid range is 1 to 100. | [optional] 
 **pagetoken** | **String**| Optional Prev or Next page token returned from a previous query execution. Default is start with first page. | [optional] 
 **scope** | **String**| Optional parameter to define the scope of the queried API Keys. Can be &#39;entity&#39; (default) or &#39;account&#39;. | [optional] [default to &#39;entity&#39;]
 **type** | **String**| Optional parameter to filter the type of the queried API Keys. Can be &#39;user&#39; or &#39;serviceid&#39;. | [optional] 
 **sort** | **String**| Optional sort property, valid values are name, description, created_at and created_by. If specified, the items are sorted by the value of this property. | [optional] 
 **order** | **String**| Optional sort order, valid values are asc and desc. Default: asc. | [optional] [default to &#39;asc&#39;]
 **include_history** | **Boolean**| Defines if the entity history is included in the response. | [optional] [default to false]
 **authorization** | **String**| Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request. | [optional] 

### Return type

[**ApiKeyList**](ApiKeyList.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_service_ids

> ServiceIdList list_service_ids(opts)

List service IDs

Returns a list of service IDs. Users can manage user API keys for themself, or service ID API keys for service IDs that are bound to an entity they have access to.   

### Example

```ruby
# load the gem
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::IdentityOperationsApi.new
opts = {
  account_id: 'account_id_example', # String | Account ID of the service ID(s) to query. This parameter is required (unless using a pagetoken).
  name: 'name_example', # String | Name of the service ID(s) to query. Optional.20 items per page. Valid range is 1 to 100.
  pagesize: 56, # Integer | Optional size of a single page. Default is 20 items per page. Valid range is 1 to 100.
  pagetoken: 'pagetoken_example', # String | Optional Prev or Next page token returned from a previous query execution. Default is start with first page.
  sort: 'sort_example', # String | Optional sort property, valid values are name, description, created_at and modified_at. If specified, the items are sorted by the value of this property.
  order: 'asc', # String | Optional sort order, valid values are asc and desc. Default: asc.
  include_history: false, # Boolean | Defines if the entity history is included in the response
  authorization: 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Please make sure that the provided token has the required authority for the request.
}

begin
  #List service IDs
  result = api_instance.list_service_ids(opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Exception when calling IdentityOperationsApi->list_service_ids: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| Account ID of the service ID(s) to query. This parameter is required (unless using a pagetoken). | [optional] 
 **name** | **String**| Name of the service ID(s) to query. Optional.20 items per page. Valid range is 1 to 100. | [optional] 
 **pagesize** | **Integer**| Optional size of a single page. Default is 20 items per page. Valid range is 1 to 100. | [optional] 
 **pagetoken** | **String**| Optional Prev or Next page token returned from a previous query execution. Default is start with first page. | [optional] 
 **sort** | **String**| Optional sort property, valid values are name, description, created_at and modified_at. If specified, the items are sorted by the value of this property. | [optional] 
 **order** | **String**| Optional sort order, valid values are asc and desc. Default: asc. | [optional] [default to &#39;asc&#39;]
 **include_history** | **Boolean**| Defines if the entity history is included in the response | [optional] [default to false]
 **authorization** | **String**| Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request. | [optional] 

### Return type

[**ServiceIdList**](ServiceIdList.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## lock_api_key

> lock_api_key(id, opts)

Lock the API key

Locks an API key by ID. Users can manage user API keys for themself, or service ID API keys for service IDs that are bound to an entity they have access to. In case of service IDs and their API keys, a user must be either an account owner, a IBM Cloud org manager or IBM Cloud space developer in order to manage service IDs of the entity.

### Example

```ruby
# load the gem
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::IdentityOperationsApi.new
id = 'id_example' # String | Unique ID of the API key.
opts = {
  authorization: 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Please make sure that the provided token has the required authority for the request.
}

begin
  #Lock the API key
  api_instance.lock_api_key(id, opts)
rescue IbmCloudIam::ApiError => e
  puts "Exception when calling IdentityOperationsApi->lock_api_key: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Unique ID of the API key. | 
 **authorization** | **String**| Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request. | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## lock_service_id

> lock_service_id(id, opts)

Lock the service ID

Locks a service ID by ID. Users can manage user API keys for themself, or service ID API keys for service IDs that are bound to an entity they have access to. In case of service IDs and their API keys, a user must be either an account owner, a IBM Cloud org manager or IBM Cloud space developer in order to manage service IDs of the entity.

### Example

```ruby
# load the gem
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::IdentityOperationsApi.new
id = 'id_example' # String | Unique ID of the service ID.
opts = {
  authorization: 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Please make sure that the provided token has the required authority for the request.
}

begin
  #Lock the service ID
  api_instance.lock_service_id(id, opts)
rescue IbmCloudIam::ApiError => e
  puts "Exception when calling IdentityOperationsApi->lock_service_id: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Unique ID of the service ID. | 
 **authorization** | **String**| Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request. | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## unlock_api_key

> unlock_api_key(id, opts)

Unlock the API key

Unlocks an API key by ID. Users can manage user API keys for themself, or service ID API keys for service IDs that are bound to an entity they have access to. In case of service IDs and their API keys, a user must be either an account owner, a IBM Cloud org manager or IBM Cloud space developer in order to manage service IDs of the entity.

### Example

```ruby
# load the gem
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::IdentityOperationsApi.new
id = 'id_example' # String | Unique ID of the API key.
opts = {
  authorization: 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Please make sure that the provided token has the required authority for the request.
}

begin
  #Unlock the API key
  api_instance.unlock_api_key(id, opts)
rescue IbmCloudIam::ApiError => e
  puts "Exception when calling IdentityOperationsApi->unlock_api_key: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Unique ID of the API key. | 
 **authorization** | **String**| Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request. | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## unlock_service_id

> unlock_service_id(id, opts)

Unlock the service ID

Unlocks a service ID by ID. Users can manage user API keys for themself, or service ID API keys for service IDs that are bound to an entity they have access to. In case of service IDs and their API keys, a user must be either an account owner, a IBM Cloud org manager or IBM Cloud space developer in order to manage service IDs of the entity.

### Example

```ruby
# load the gem
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::IdentityOperationsApi.new
id = 'id_example' # String | Unique ID of the service ID.
opts = {
  authorization: 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Please make sure that the provided token has the required authority for the request.
}

begin
  #Unlock the service ID
  api_instance.unlock_service_id(id, opts)
rescue IbmCloudIam::ApiError => e
  puts "Exception when calling IdentityOperationsApi->unlock_service_id: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Unique ID of the service ID. | 
 **authorization** | **String**| Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request. | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## update_api_key

> ApiKey update_api_key(id, if_match, update_api_key_request, opts)

Updates an API key

Updates properties of an API key. This does NOT affect existing access tokens. Their token content will stay unchanged until the access token is refreshed. To update an API key, pass the property to be modified. To delete one property's value, pass the property with an empty value \"\".Users can manage user API keys for themself, or service ID API keys for service IDs that are bound to an entity they have access to.   

### Example

```ruby
# load the gem
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::IdentityOperationsApi.new
id = 'id_example' # String | Unique ID of the API key to be updated.
if_match = 'if_match_example' # String | Version of the API key to be updated. Specify the version that you retrieved when reading the API key. This value  helps identifying parallel usage of this API. Pass * to indicate to update any version available. This might result in stale updates. 
update_api_key_request = IbmCloudIam::UpdateApiKeyRequest.new # UpdateApiKeyRequest | Request to update an API key
opts = {
  authorization: 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Please make sure that the provided token has the required authority for the request.
}

begin
  #Updates an API key
  result = api_instance.update_api_key(id, if_match, update_api_key_request, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Exception when calling IdentityOperationsApi->update_api_key: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Unique ID of the API key to be updated. | 
 **if_match** | **String**| Version of the API key to be updated. Specify the version that you retrieved when reading the API key. This value  helps identifying parallel usage of this API. Pass * to indicate to update any version available. This might result in stale updates.  | 
 **update_api_key_request** | [**UpdateApiKeyRequest**](UpdateApiKeyRequest.md)| Request to update an API key | 
 **authorization** | **String**| Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request. | [optional] 

### Return type

[**ApiKey**](ApiKey.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_service_id

> ServiceId update_service_id(id, if_match, update_service_id_request, opts)

Update service ID

Updates properties of a service ID. This does NOT affect existing access tokens. Their token content will stay unchanged until the access token is refreshed. To update a service ID, pass the property to be modified. To delete one property's value, pass the property with an empty value \"\".Users can manage user API keys for themself, or service ID API keys for service IDs that are bound to an entity they have access to.   

### Example

```ruby
# load the gem
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::IdentityOperationsApi.new
id = 'id_example' # String | Unique ID of the service ID to be updated.
if_match = 'if_match_example' # String | Version of the service ID to be updated. Specify the version that you retrieved as entity_tag (ETag header) when reading the service ID. This value helps identifying parallel usage of this API. Pass * to indicate to update any version available. This might result in stale updates.
update_service_id_request = IbmCloudIam::UpdateServiceIdRequest.new # UpdateServiceIdRequest | Request to update a service ID
opts = {
  authorization: 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Please make sure that the provided token has the required authority for the request.
}

begin
  #Update service ID
  result = api_instance.update_service_id(id, if_match, update_service_id_request, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Exception when calling IdentityOperationsApi->update_service_id: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Unique ID of the service ID to be updated. | 
 **if_match** | **String**| Version of the service ID to be updated. Specify the version that you retrieved as entity_tag (ETag header) when reading the service ID. This value helps identifying parallel usage of this API. Pass * to indicate to update any version available. This might result in stale updates. | 
 **update_service_id_request** | [**UpdateServiceIdRequest**](UpdateServiceIdRequest.md)| Request to update a service ID | 
 **authorization** | **String**| Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request. | [optional] 

### Return type

[**ServiceId**](ServiceId.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

