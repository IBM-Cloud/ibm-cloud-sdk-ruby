# IbmCloudIam::TrustedProfileTemplateApi

All URIs are relative to *https://iam.cloud.ibm.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**commit_profile_template**](TrustedProfileTemplateApi.md#commit_profile_template) | **POST** /v1/profile_templates/{template_id}/versions/{version}/commit | Commit a template version |
| [**create_profile_template**](TrustedProfileTemplateApi.md#create_profile_template) | **POST** /v1/profile_templates | Create a trusted profile template |
| [**create_profile_template_version**](TrustedProfileTemplateApi.md#create_profile_template_version) | **POST** /v1/profile_templates/{template_id}/versions | Create new version of a trusted profile template |
| [**delete_all_versions_of_profile_template**](TrustedProfileTemplateApi.md#delete_all_versions_of_profile_template) | **DELETE** /v1/profile_templates/{template_id} | Delete all versions of a trusted profile template |
| [**delete_profile_template_version**](TrustedProfileTemplateApi.md#delete_profile_template_version) | **DELETE** /v1/profile_templates/{template_id}/versions/{version} | Delete version of trusted profile template |
| [**get_latest_profile_template_version**](TrustedProfileTemplateApi.md#get_latest_profile_template_version) | **GET** /v1/profile_templates/{template_id} | Get latest version of a trusted profile template |
| [**get_profile_template_version**](TrustedProfileTemplateApi.md#get_profile_template_version) | **GET** /v1/profile_templates/{template_id}/versions/{version} | Get version of trusted profile template |
| [**list_profile_templates**](TrustedProfileTemplateApi.md#list_profile_templates) | **GET** /v1/profile_templates | List trusted profile templates |
| [**list_versions_of_profile_template**](TrustedProfileTemplateApi.md#list_versions_of_profile_template) | **GET** /v1/profile_templates/{template_id}/versions | List trusted profile template versions |
| [**update_profile_template_version**](TrustedProfileTemplateApi.md#update_profile_template_version) | **PUT** /v1/profile_templates/{template_id}/versions/{version} | Update version of trusted profile template |


## commit_profile_template

> commit_profile_template(template_id, version, authorization)

Commit a template version

Commit a specific version of a trusted profile template in an enterprise account. You must commit a template before you can assign it to child accounts. Once a template is committed, you can no longer modify the template.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::TrustedProfileTemplateApi.new
template_id = 'template_id_example' # String | ID of the trusted profile template
version = 'version_example' # String | Version of the Profile Template
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.

begin
  # Commit a template version
  api_instance.commit_profile_template(template_id, version, authorization)
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfileTemplateApi->commit_profile_template: #{e}"
end
```

#### Using the commit_profile_template_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> commit_profile_template_with_http_info(template_id, version, authorization)

```ruby
begin
  # Commit a template version
  data, status_code, headers = api_instance.commit_profile_template_with_http_info(template_id, version, authorization)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfileTemplateApi->commit_profile_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **String** | ID of the trusted profile template |  |
| **version** | **String** | Version of the Profile Template |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## create_profile_template

> <TrustedProfileTemplateResponse> create_profile_template(authorization, trusted_profile_template_request)

Create a trusted profile template

Create a new trusted profile template in an enterprise account.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::TrustedProfileTemplateApi.new
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
trusted_profile_template_request = IbmCloudIam::TrustedProfileTemplateRequest.new # TrustedProfileTemplateRequest | Request to create a trusted profile template.

begin
  # Create a trusted profile template
  result = api_instance.create_profile_template(authorization, trusted_profile_template_request)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfileTemplateApi->create_profile_template: #{e}"
end
```

#### Using the create_profile_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TrustedProfileTemplateResponse>, Integer, Hash)> create_profile_template_with_http_info(authorization, trusted_profile_template_request)

```ruby
begin
  # Create a trusted profile template
  data, status_code, headers = api_instance.create_profile_template_with_http_info(authorization, trusted_profile_template_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TrustedProfileTemplateResponse>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfileTemplateApi->create_profile_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |
| **trusted_profile_template_request** | [**TrustedProfileTemplateRequest**](TrustedProfileTemplateRequest.md) | Request to create a trusted profile template. |  |

### Return type

[**TrustedProfileTemplateResponse**](TrustedProfileTemplateResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_profile_template_version

> <TrustedProfileTemplateResponse> create_profile_template_version(template_id, authorization, trusted_profile_template_request)

Create new version of a trusted profile template

Create a new version of a trusted profile template in an enterprise account.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::TrustedProfileTemplateApi.new
template_id = 'template_id_example' # String | ID of the trusted profile template
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
trusted_profile_template_request = IbmCloudIam::TrustedProfileTemplateRequest.new # TrustedProfileTemplateRequest | Request to create new version of a Trusted Profile Template

begin
  # Create new version of a trusted profile template
  result = api_instance.create_profile_template_version(template_id, authorization, trusted_profile_template_request)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfileTemplateApi->create_profile_template_version: #{e}"
end
```

#### Using the create_profile_template_version_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TrustedProfileTemplateResponse>, Integer, Hash)> create_profile_template_version_with_http_info(template_id, authorization, trusted_profile_template_request)

```ruby
begin
  # Create new version of a trusted profile template
  data, status_code, headers = api_instance.create_profile_template_version_with_http_info(template_id, authorization, trusted_profile_template_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TrustedProfileTemplateResponse>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfileTemplateApi->create_profile_template_version_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **String** | ID of the trusted profile template |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |
| **trusted_profile_template_request** | [**TrustedProfileTemplateRequest**](TrustedProfileTemplateRequest.md) | Request to create new version of a Trusted Profile Template |  |

### Return type

[**TrustedProfileTemplateResponse**](TrustedProfileTemplateResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_all_versions_of_profile_template

> delete_all_versions_of_profile_template(template_id, authorization)

Delete all versions of a trusted profile template

Delete all versions of a trusted profile template in an enterprise account. If any version is assigned to child accounts, you must first delete the assignment.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::TrustedProfileTemplateApi.new
template_id = 'template_id_example' # String | ID of the trusted profile template
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.

begin
  # Delete all versions of a trusted profile template
  api_instance.delete_all_versions_of_profile_template(template_id, authorization)
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfileTemplateApi->delete_all_versions_of_profile_template: #{e}"
end
```

#### Using the delete_all_versions_of_profile_template_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_all_versions_of_profile_template_with_http_info(template_id, authorization)

```ruby
begin
  # Delete all versions of a trusted profile template
  data, status_code, headers = api_instance.delete_all_versions_of_profile_template_with_http_info(template_id, authorization)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfileTemplateApi->delete_all_versions_of_profile_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **String** | ID of the trusted profile template |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_profile_template_version

> delete_profile_template_version(template_id, version, authorization)

Delete version of trusted profile template

Delete a specific version of a trusted profile template in an enterprise account. If the version is assigned to child accounts, you must first delete the assignment.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::TrustedProfileTemplateApi.new
template_id = 'template_id_example' # String | ID of the trusted profile template
version = 'version_example' # String | Version of the Profile Template
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.

begin
  # Delete version of trusted profile template
  api_instance.delete_profile_template_version(template_id, version, authorization)
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfileTemplateApi->delete_profile_template_version: #{e}"
end
```

#### Using the delete_profile_template_version_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_profile_template_version_with_http_info(template_id, version, authorization)

```ruby
begin
  # Delete version of trusted profile template
  data, status_code, headers = api_instance.delete_profile_template_version_with_http_info(template_id, version, authorization)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfileTemplateApi->delete_profile_template_version_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **String** | ID of the trusted profile template |  |
| **version** | **String** | Version of the Profile Template |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_latest_profile_template_version

> <TrustedProfileTemplateResponse> get_latest_profile_template_version(template_id, authorization, opts)

Get latest version of a trusted profile template

Get the latest version of a trusted profile template in an enterprise account.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::TrustedProfileTemplateApi.new
template_id = 'template_id_example' # String | ID of the trusted profile template
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
opts = {
  include_history: true # Boolean | Defines if the entity history is included in the response
}

begin
  # Get latest version of a trusted profile template
  result = api_instance.get_latest_profile_template_version(template_id, authorization, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfileTemplateApi->get_latest_profile_template_version: #{e}"
end
```

#### Using the get_latest_profile_template_version_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TrustedProfileTemplateResponse>, Integer, Hash)> get_latest_profile_template_version_with_http_info(template_id, authorization, opts)

```ruby
begin
  # Get latest version of a trusted profile template
  data, status_code, headers = api_instance.get_latest_profile_template_version_with_http_info(template_id, authorization, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TrustedProfileTemplateResponse>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfileTemplateApi->get_latest_profile_template_version_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **String** | ID of the trusted profile template |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |
| **include_history** | **Boolean** | Defines if the entity history is included in the response | [optional][default to false] |

### Return type

[**TrustedProfileTemplateResponse**](TrustedProfileTemplateResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_profile_template_version

> <TrustedProfileTemplateResponse> get_profile_template_version(template_id, version, authorization, opts)

Get version of trusted profile template

Get a specific version of a trusted profile template in an enterprise account.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::TrustedProfileTemplateApi.new
template_id = 'template_id_example' # String | ID of the trusted profile template
version = 'version_example' # String | Version of the Profile Template
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
opts = {
  include_history: true # Boolean | Defines if the entity history is included in the response
}

begin
  # Get version of trusted profile template
  result = api_instance.get_profile_template_version(template_id, version, authorization, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfileTemplateApi->get_profile_template_version: #{e}"
end
```

#### Using the get_profile_template_version_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TrustedProfileTemplateResponse>, Integer, Hash)> get_profile_template_version_with_http_info(template_id, version, authorization, opts)

```ruby
begin
  # Get version of trusted profile template
  data, status_code, headers = api_instance.get_profile_template_version_with_http_info(template_id, version, authorization, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TrustedProfileTemplateResponse>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfileTemplateApi->get_profile_template_version_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **String** | ID of the trusted profile template |  |
| **version** | **String** | Version of the Profile Template |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |
| **include_history** | **Boolean** | Defines if the entity history is included in the response | [optional][default to false] |

### Return type

[**TrustedProfileTemplateResponse**](TrustedProfileTemplateResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_profile_templates

> <TrustedProfileTemplateList> list_profile_templates(authorization, opts)

List trusted profile templates

List the trusted profile templates in an enterprise account.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::TrustedProfileTemplateApi.new
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
opts = {
  account_id: 'account_id_example', # String | Account ID of the trusted profile templates to query. This parameter is required unless using a pagetoken.
  limit: 'limit_example', # String | Optional size of a single page.
  pagetoken: 'pagetoken_example', # String | Optional Prev or Next page token returned from a previous query execution. Default is start with first page.
  sort: 'created_at', # String | Optional sort property. If specified, the returned templates are sorted according to this property.
  order: 'asc', # String | Optional sort order.
  include_history: 'include_history_example' # String | Defines if the entity history is included in the response.
}

begin
  # List trusted profile templates
  result = api_instance.list_profile_templates(authorization, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfileTemplateApi->list_profile_templates: #{e}"
end
```

#### Using the list_profile_templates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TrustedProfileTemplateList>, Integer, Hash)> list_profile_templates_with_http_info(authorization, opts)

```ruby
begin
  # List trusted profile templates
  data, status_code, headers = api_instance.list_profile_templates_with_http_info(authorization, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TrustedProfileTemplateList>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfileTemplateApi->list_profile_templates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |
| **account_id** | **String** | Account ID of the trusted profile templates to query. This parameter is required unless using a pagetoken. | [optional] |
| **limit** | **String** | Optional size of a single page. | [optional][default to &#39;20&#39;] |
| **pagetoken** | **String** | Optional Prev or Next page token returned from a previous query execution. Default is start with first page. | [optional] |
| **sort** | **String** | Optional sort property. If specified, the returned templates are sorted according to this property. | [optional][default to &#39;created_at&#39;] |
| **order** | **String** | Optional sort order. | [optional][default to &#39;asc&#39;] |
| **include_history** | **String** | Defines if the entity history is included in the response. | [optional][default to &#39;false&#39;] |

### Return type

[**TrustedProfileTemplateList**](TrustedProfileTemplateList.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_versions_of_profile_template

> <TrustedProfileTemplateList> list_versions_of_profile_template(template_id, authorization, opts)

List trusted profile template versions

List the versions of a trusted profile template in an enterprise account.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::TrustedProfileTemplateApi.new
template_id = 'template_id_example' # String | ID of the trusted profile template
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
opts = {
  limit: 'limit_example', # String | Optional size of a single page.
  pagetoken: 'pagetoken_example', # String | Optional Prev or Next page token returned from a previous query execution. Default is start with first page.
  sort: 'created_at', # String | Optional sort property. If specified, the returned templated are sorted according to this property
  order: 'asc', # String | Optional sort order.
  include_history: 'include_history_example' # String | Defines if the entity history is included in the response
}

begin
  # List trusted profile template versions
  result = api_instance.list_versions_of_profile_template(template_id, authorization, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfileTemplateApi->list_versions_of_profile_template: #{e}"
end
```

#### Using the list_versions_of_profile_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TrustedProfileTemplateList>, Integer, Hash)> list_versions_of_profile_template_with_http_info(template_id, authorization, opts)

```ruby
begin
  # List trusted profile template versions
  data, status_code, headers = api_instance.list_versions_of_profile_template_with_http_info(template_id, authorization, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TrustedProfileTemplateList>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfileTemplateApi->list_versions_of_profile_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **String** | ID of the trusted profile template |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |
| **limit** | **String** | Optional size of a single page. | [optional][default to &#39;20&#39;] |
| **pagetoken** | **String** | Optional Prev or Next page token returned from a previous query execution. Default is start with first page. | [optional] |
| **sort** | **String** | Optional sort property. If specified, the returned templated are sorted according to this property | [optional][default to &#39;created_at&#39;] |
| **order** | **String** | Optional sort order. | [optional][default to &#39;asc&#39;] |
| **include_history** | **String** | Defines if the entity history is included in the response | [optional][default to &#39;false&#39;] |

### Return type

[**TrustedProfileTemplateList**](TrustedProfileTemplateList.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_profile_template_version

> <TrustedProfileTemplateResponse> update_profile_template_version(if_match, template_id, version, authorization, trusted_profile_template_request)

Update version of trusted profile template

Update a specific version of a trusted profile template in an enterprise account.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::TrustedProfileTemplateApi.new
if_match = 'if_match_example' # String | Entity tag of the Template to be updated. Specify the tag that you retrieved when reading the Profile Template. This value helps identifying parallel usage of this API. Pass * to indicate to update any version available. This might result in stale updates. 
template_id = 'template_id_example' # String | ID of the trusted profile template
version = 'version_example' # String | Version of the Profile Template
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
trusted_profile_template_request = IbmCloudIam::TrustedProfileTemplateRequest.new # TrustedProfileTemplateRequest | Request to create a trusted profile template.

begin
  # Update version of trusted profile template
  result = api_instance.update_profile_template_version(if_match, template_id, version, authorization, trusted_profile_template_request)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfileTemplateApi->update_profile_template_version: #{e}"
end
```

#### Using the update_profile_template_version_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TrustedProfileTemplateResponse>, Integer, Hash)> update_profile_template_version_with_http_info(if_match, template_id, version, authorization, trusted_profile_template_request)

```ruby
begin
  # Update version of trusted profile template
  data, status_code, headers = api_instance.update_profile_template_version_with_http_info(if_match, template_id, version, authorization, trusted_profile_template_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TrustedProfileTemplateResponse>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfileTemplateApi->update_profile_template_version_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **if_match** | **String** | Entity tag of the Template to be updated. Specify the tag that you retrieved when reading the Profile Template. This value helps identifying parallel usage of this API. Pass * to indicate to update any version available. This might result in stale updates.  |  |
| **template_id** | **String** | ID of the trusted profile template |  |
| **version** | **String** | Version of the Profile Template |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |
| **trusted_profile_template_request** | [**TrustedProfileTemplateRequest**](TrustedProfileTemplateRequest.md) | Request to create a trusted profile template. |  |

### Return type

[**TrustedProfileTemplateResponse**](TrustedProfileTemplateResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

