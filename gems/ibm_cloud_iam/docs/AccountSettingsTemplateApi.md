# IbmCloudIam::AccountSettingsTemplateApi

All URIs are relative to *https://iam.cloud.ibm.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**commit_account_settings_template**](AccountSettingsTemplateApi.md#commit_account_settings_template) | **POST** /v1/account_settings_templates/{template_id}/versions/{version}/commit | Commit a template version |
| [**create_account_settings_template**](AccountSettingsTemplateApi.md#create_account_settings_template) | **POST** /v1/account_settings_templates | Create an account settings template |
| [**create_account_settings_template_version**](AccountSettingsTemplateApi.md#create_account_settings_template_version) | **POST** /v1/account_settings_templates/{template_id}/versions | Create a new version of an account settings template |
| [**delete_account_settings_template_version**](AccountSettingsTemplateApi.md#delete_account_settings_template_version) | **DELETE** /v1/account_settings_templates/{template_id}/versions/{version} | Delete version of an account settings template |
| [**delete_all_versions_of_account_settings_template**](AccountSettingsTemplateApi.md#delete_all_versions_of_account_settings_template) | **DELETE** /v1/account_settings_templates/{template_id} | Delete all versions of an account settings template |
| [**get_account_settings_template_version**](AccountSettingsTemplateApi.md#get_account_settings_template_version) | **GET** /v1/account_settings_templates/{template_id}/versions/{version} | Get version of an account settings template |
| [**get_latest_account_settings_template_version**](AccountSettingsTemplateApi.md#get_latest_account_settings_template_version) | **GET** /v1/account_settings_templates/{template_id} | Get latest version of an account settings template |
| [**list_account_settings_templates**](AccountSettingsTemplateApi.md#list_account_settings_templates) | **GET** /v1/account_settings_templates | List account settings templates |
| [**list_versions_of_account_settings_template**](AccountSettingsTemplateApi.md#list_versions_of_account_settings_template) | **GET** /v1/account_settings_templates/{template_id}/versions | List account settings template versions |
| [**update_account_settings_template_version**](AccountSettingsTemplateApi.md#update_account_settings_template_version) | **PUT** /v1/account_settings_templates/{template_id}/versions/{version} | Update version of an account settings template |


## commit_account_settings_template

> commit_account_settings_template(template_id, version, authorization)

Commit a template version

Commit a specific version of an account settings template in an Enterprise Account. A Template must be committed before being assigned, and once committed, can no longer be modified.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::AccountSettingsTemplateApi.new
template_id = 'template_id_example' # String | ID of the account settings template
version = 'version_example' # String | Version of the account settings template
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.

begin
  # Commit a template version
  api_instance.commit_account_settings_template(template_id, version, authorization)
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsTemplateApi->commit_account_settings_template: #{e}"
end
```

#### Using the commit_account_settings_template_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> commit_account_settings_template_with_http_info(template_id, version, authorization)

```ruby
begin
  # Commit a template version
  data, status_code, headers = api_instance.commit_account_settings_template_with_http_info(template_id, version, authorization)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsTemplateApi->commit_account_settings_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **String** | ID of the account settings template |  |
| **version** | **String** | Version of the account settings template |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## create_account_settings_template

> <AccountSettingsTemplateResponse> create_account_settings_template(authorization, account_settings_template_request)

Create an account settings template

Create a new account settings template in an enterprise account.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::AccountSettingsTemplateApi.new
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
account_settings_template_request = IbmCloudIam::AccountSettingsTemplateRequest.new # AccountSettingsTemplateRequest | Request to create an account settings template.

begin
  # Create an account settings template
  result = api_instance.create_account_settings_template(authorization, account_settings_template_request)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsTemplateApi->create_account_settings_template: #{e}"
end
```

#### Using the create_account_settings_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountSettingsTemplateResponse>, Integer, Hash)> create_account_settings_template_with_http_info(authorization, account_settings_template_request)

```ruby
begin
  # Create an account settings template
  data, status_code, headers = api_instance.create_account_settings_template_with_http_info(authorization, account_settings_template_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountSettingsTemplateResponse>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsTemplateApi->create_account_settings_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |
| **account_settings_template_request** | [**AccountSettingsTemplateRequest**](AccountSettingsTemplateRequest.md) | Request to create an account settings template. |  |

### Return type

[**AccountSettingsTemplateResponse**](AccountSettingsTemplateResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_account_settings_template_version

> <AccountSettingsTemplateResponse> create_account_settings_template_version(template_id, authorization, account_settings_template_request)

Create a new version of an account settings template

Create a new version of an account settings template in an Enterprise Account

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::AccountSettingsTemplateApi.new
template_id = 'template_id_example' # String | ID of the account settings template
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
account_settings_template_request = IbmCloudIam::AccountSettingsTemplateRequest.new # AccountSettingsTemplateRequest | Request to create new version of an account settings template

begin
  # Create a new version of an account settings template
  result = api_instance.create_account_settings_template_version(template_id, authorization, account_settings_template_request)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsTemplateApi->create_account_settings_template_version: #{e}"
end
```

#### Using the create_account_settings_template_version_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountSettingsTemplateResponse>, Integer, Hash)> create_account_settings_template_version_with_http_info(template_id, authorization, account_settings_template_request)

```ruby
begin
  # Create a new version of an account settings template
  data, status_code, headers = api_instance.create_account_settings_template_version_with_http_info(template_id, authorization, account_settings_template_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountSettingsTemplateResponse>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsTemplateApi->create_account_settings_template_version_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **String** | ID of the account settings template |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |
| **account_settings_template_request** | [**AccountSettingsTemplateRequest**](AccountSettingsTemplateRequest.md) | Request to create new version of an account settings template |  |

### Return type

[**AccountSettingsTemplateResponse**](AccountSettingsTemplateResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_account_settings_template_version

> delete_account_settings_template_version(template_id, version, authorization)

Delete version of an account settings template

Delete a specific version of an account settings template in an Enterprise Account

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::AccountSettingsTemplateApi.new
template_id = 'template_id_example' # String | ID of the account settings template
version = 'version_example' # String | Version of the account settings template
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.

begin
  # Delete version of an account settings template
  api_instance.delete_account_settings_template_version(template_id, version, authorization)
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsTemplateApi->delete_account_settings_template_version: #{e}"
end
```

#### Using the delete_account_settings_template_version_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_account_settings_template_version_with_http_info(template_id, version, authorization)

```ruby
begin
  # Delete version of an account settings template
  data, status_code, headers = api_instance.delete_account_settings_template_version_with_http_info(template_id, version, authorization)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsTemplateApi->delete_account_settings_template_version_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **String** | ID of the account settings template |  |
| **version** | **String** | Version of the account settings template |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_all_versions_of_account_settings_template

> delete_all_versions_of_account_settings_template(template_id, authorization)

Delete all versions of an account settings template

Delete all versions of an account settings template in an enterprise account. If any version is assigned to child accounts, you must first delete the assignment.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::AccountSettingsTemplateApi.new
template_id = 'template_id_example' # String | ID of the account settings template
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.

begin
  # Delete all versions of an account settings template
  api_instance.delete_all_versions_of_account_settings_template(template_id, authorization)
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsTemplateApi->delete_all_versions_of_account_settings_template: #{e}"
end
```

#### Using the delete_all_versions_of_account_settings_template_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_all_versions_of_account_settings_template_with_http_info(template_id, authorization)

```ruby
begin
  # Delete all versions of an account settings template
  data, status_code, headers = api_instance.delete_all_versions_of_account_settings_template_with_http_info(template_id, authorization)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsTemplateApi->delete_all_versions_of_account_settings_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **String** | ID of the account settings template |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_account_settings_template_version

> <AccountSettingsTemplateResponse> get_account_settings_template_version(template_id, version, authorization, opts)

Get version of an account settings template

Get a specific version of an account settings template in an Enterprise Account

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::AccountSettingsTemplateApi.new
template_id = 'template_id_example' # String | ID of the account settings template
version = 'version_example' # String | Version of the account settings template
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
opts = {
  include_history: true # Boolean | Defines if the entity history is included in the response
}

begin
  # Get version of an account settings template
  result = api_instance.get_account_settings_template_version(template_id, version, authorization, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsTemplateApi->get_account_settings_template_version: #{e}"
end
```

#### Using the get_account_settings_template_version_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountSettingsTemplateResponse>, Integer, Hash)> get_account_settings_template_version_with_http_info(template_id, version, authorization, opts)

```ruby
begin
  # Get version of an account settings template
  data, status_code, headers = api_instance.get_account_settings_template_version_with_http_info(template_id, version, authorization, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountSettingsTemplateResponse>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsTemplateApi->get_account_settings_template_version_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **String** | ID of the account settings template |  |
| **version** | **String** | Version of the account settings template |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |
| **include_history** | **Boolean** | Defines if the entity history is included in the response | [optional][default to false] |

### Return type

[**AccountSettingsTemplateResponse**](AccountSettingsTemplateResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_latest_account_settings_template_version

> <AccountSettingsTemplateResponse> get_latest_account_settings_template_version(template_id, authorization, opts)

Get latest version of an account settings template

Get the latest version of a specific account settings template in an enterprise account.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::AccountSettingsTemplateApi.new
template_id = 'template_id_example' # String | ID of the account settings template
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
opts = {
  include_history: true # Boolean | Defines if the entity history is included in the response
}

begin
  # Get latest version of an account settings template
  result = api_instance.get_latest_account_settings_template_version(template_id, authorization, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsTemplateApi->get_latest_account_settings_template_version: #{e}"
end
```

#### Using the get_latest_account_settings_template_version_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountSettingsTemplateResponse>, Integer, Hash)> get_latest_account_settings_template_version_with_http_info(template_id, authorization, opts)

```ruby
begin
  # Get latest version of an account settings template
  data, status_code, headers = api_instance.get_latest_account_settings_template_version_with_http_info(template_id, authorization, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountSettingsTemplateResponse>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsTemplateApi->get_latest_account_settings_template_version_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **String** | ID of the account settings template |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |
| **include_history** | **Boolean** | Defines if the entity history is included in the response | [optional][default to false] |

### Return type

[**AccountSettingsTemplateResponse**](AccountSettingsTemplateResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_account_settings_templates

> <AccountSettingsTemplateList> list_account_settings_templates(authorization, opts)

List account settings templates

List account settings templates in an enterprise account

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::AccountSettingsTemplateApi.new
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
opts = {
  account_id: 'account_id_example', # String | Account ID of the account settings templates to query. This parameter is required unless using a pagetoken.
  limit: 'limit_example', # String | Optional size of a single page.
  pagetoken: 'pagetoken_example', # String | Optional Prev or Next page token returned from a previous query execution. Default is start with first page.
  sort: 'created_at', # String | Optional sort property. If specified, the returned templated are sorted according to this property
  order: 'asc', # String | Optional sort order.
  include_history: 'include_history_example' # String | Defines if the entity history is included in the response
}

begin
  # List account settings templates
  result = api_instance.list_account_settings_templates(authorization, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsTemplateApi->list_account_settings_templates: #{e}"
end
```

#### Using the list_account_settings_templates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountSettingsTemplateList>, Integer, Hash)> list_account_settings_templates_with_http_info(authorization, opts)

```ruby
begin
  # List account settings templates
  data, status_code, headers = api_instance.list_account_settings_templates_with_http_info(authorization, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountSettingsTemplateList>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsTemplateApi->list_account_settings_templates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |
| **account_id** | **String** | Account ID of the account settings templates to query. This parameter is required unless using a pagetoken. | [optional] |
| **limit** | **String** | Optional size of a single page. | [optional][default to &#39;20&#39;] |
| **pagetoken** | **String** | Optional Prev or Next page token returned from a previous query execution. Default is start with first page. | [optional] |
| **sort** | **String** | Optional sort property. If specified, the returned templated are sorted according to this property | [optional][default to &#39;created_at&#39;] |
| **order** | **String** | Optional sort order. | [optional][default to &#39;asc&#39;] |
| **include_history** | **String** | Defines if the entity history is included in the response | [optional][default to &#39;false&#39;] |

### Return type

[**AccountSettingsTemplateList**](AccountSettingsTemplateList.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_versions_of_account_settings_template

> <AccountSettingsTemplateList> list_versions_of_account_settings_template(template_id, authorization, opts)

List account settings template versions

List the versions of a specific account settings template in an enterprise account.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::AccountSettingsTemplateApi.new
template_id = 'template_id_example' # String | ID of the account settings template
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
opts = {
  limit: 'limit_example', # String | Optional size of a single page.
  pagetoken: 'pagetoken_example', # String | Optional Prev or Next page token returned from a previous query execution. Default is start with first page.
  sort: 'created_at', # String | Optional sort property. If specified, the returned templated are sorted according to this property
  order: 'asc', # String | Optional sort order.
  include_history: 'include_history_example' # String | Defines if the entity history is included in the response
}

begin
  # List account settings template versions
  result = api_instance.list_versions_of_account_settings_template(template_id, authorization, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsTemplateApi->list_versions_of_account_settings_template: #{e}"
end
```

#### Using the list_versions_of_account_settings_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountSettingsTemplateList>, Integer, Hash)> list_versions_of_account_settings_template_with_http_info(template_id, authorization, opts)

```ruby
begin
  # List account settings template versions
  data, status_code, headers = api_instance.list_versions_of_account_settings_template_with_http_info(template_id, authorization, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountSettingsTemplateList>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsTemplateApi->list_versions_of_account_settings_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **String** | ID of the account settings template |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |
| **limit** | **String** | Optional size of a single page. | [optional][default to &#39;20&#39;] |
| **pagetoken** | **String** | Optional Prev or Next page token returned from a previous query execution. Default is start with first page. | [optional] |
| **sort** | **String** | Optional sort property. If specified, the returned templated are sorted according to this property | [optional][default to &#39;created_at&#39;] |
| **order** | **String** | Optional sort order. | [optional][default to &#39;asc&#39;] |
| **include_history** | **String** | Defines if the entity history is included in the response | [optional][default to &#39;false&#39;] |

### Return type

[**AccountSettingsTemplateList**](AccountSettingsTemplateList.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_account_settings_template_version

> <AccountSettingsTemplateResponse> update_account_settings_template_version(if_match, template_id, version, authorization, account_settings_template_request)

Update version of an account settings template

Update a specific version of an account settings template in an Enterprise Account

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::AccountSettingsTemplateApi.new
if_match = 'if_match_example' # String | Entity tag of the Template to be updated. Specify the tag that you retrieved when reading the account settings template. This value helps identifying parallel usage of this API. Pass * to indicate to update any version available. This might result in stale updates. 
template_id = 'template_id_example' # String | ID of the account settings template
version = 'version_example' # String | Version of the account settings template
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
account_settings_template_request = IbmCloudIam::AccountSettingsTemplateRequest.new # AccountSettingsTemplateRequest | Request to create an account settings template.

begin
  # Update version of an account settings template
  result = api_instance.update_account_settings_template_version(if_match, template_id, version, authorization, account_settings_template_request)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsTemplateApi->update_account_settings_template_version: #{e}"
end
```

#### Using the update_account_settings_template_version_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountSettingsTemplateResponse>, Integer, Hash)> update_account_settings_template_version_with_http_info(if_match, template_id, version, authorization, account_settings_template_request)

```ruby
begin
  # Update version of an account settings template
  data, status_code, headers = api_instance.update_account_settings_template_version_with_http_info(if_match, template_id, version, authorization, account_settings_template_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountSettingsTemplateResponse>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsTemplateApi->update_account_settings_template_version_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **if_match** | **String** | Entity tag of the Template to be updated. Specify the tag that you retrieved when reading the account settings template. This value helps identifying parallel usage of this API. Pass * to indicate to update any version available. This might result in stale updates.  |  |
| **template_id** | **String** | ID of the account settings template |  |
| **version** | **String** | Version of the account settings template |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |
| **account_settings_template_request** | [**AccountSettingsTemplateRequest**](AccountSettingsTemplateRequest.md) | Request to create an account settings template. |  |

### Return type

[**AccountSettingsTemplateResponse**](AccountSettingsTemplateResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

