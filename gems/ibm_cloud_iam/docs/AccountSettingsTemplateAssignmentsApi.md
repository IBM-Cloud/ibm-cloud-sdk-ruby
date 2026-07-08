# IbmCloudIam::AccountSettingsTemplateAssignmentsApi

All URIs are relative to *https://iam.cloud.ibm.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_account_settings_assignment**](AccountSettingsTemplateAssignmentsApi.md#create_account_settings_assignment) | **POST** /v1/account_settings_assignments/ | Create assignment |
| [**delete_account_settings_assignment**](AccountSettingsTemplateAssignmentsApi.md#delete_account_settings_assignment) | **DELETE** /v1/account_settings_assignments/{assignment_id} | Delete assignment |
| [**get_account_settings_assignment**](AccountSettingsTemplateAssignmentsApi.md#get_account_settings_assignment) | **GET** /v1/account_settings_assignments/{assignment_id} | Get assignment |
| [**list_account_settings_assignments**](AccountSettingsTemplateAssignmentsApi.md#list_account_settings_assignments) | **GET** /v1/account_settings_assignments/ | List assignments |
| [**update_account_settings_assignment**](AccountSettingsTemplateAssignmentsApi.md#update_account_settings_assignment) | **PATCH** /v1/account_settings_assignments/{assignment_id} | Update assignment |


## create_account_settings_assignment

> <TemplateAssignmentResponse> create_account_settings_assignment(create_template_assignment_request, opts)

Create assignment

Create an assigment for an account settings template.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::AccountSettingsTemplateAssignmentsApi.new
create_template_assignment_request = IbmCloudIam::CreateTemplateAssignmentRequest.new({template_id: 'template_id_example', template_version: 3.56, target_type: 'Account', target: 'target_example'}) # CreateTemplateAssignmentRequest | Body parameters to create an account settings template Assignment
opts = {
  authorization: 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
}

begin
  # Create assignment
  result = api_instance.create_account_settings_assignment(create_template_assignment_request, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsTemplateAssignmentsApi->create_account_settings_assignment: #{e}"
end
```

#### Using the create_account_settings_assignment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TemplateAssignmentResponse>, Integer, Hash)> create_account_settings_assignment_with_http_info(create_template_assignment_request, opts)

```ruby
begin
  # Create assignment
  data, status_code, headers = api_instance.create_account_settings_assignment_with_http_info(create_template_assignment_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TemplateAssignmentResponse>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsTemplateAssignmentsApi->create_account_settings_assignment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_template_assignment_request** | [**CreateTemplateAssignmentRequest**](CreateTemplateAssignmentRequest.md) | Body parameters to create an account settings template Assignment |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. | [optional] |

### Return type

[**TemplateAssignmentResponse**](TemplateAssignmentResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_account_settings_assignment

> <ExceptionResponse> delete_account_settings_assignment(assignment_id, opts)

Delete assignment

Delete an account settings template assignment. This removes any IAM resources created by this assignment in child accounts.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::AccountSettingsTemplateAssignmentsApi.new
assignment_id = 'assignment_id_example' # String | ID of the Assignment Record
opts = {
  authorization: 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
}

begin
  # Delete assignment
  result = api_instance.delete_account_settings_assignment(assignment_id, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsTemplateAssignmentsApi->delete_account_settings_assignment: #{e}"
end
```

#### Using the delete_account_settings_assignment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExceptionResponse>, Integer, Hash)> delete_account_settings_assignment_with_http_info(assignment_id, opts)

```ruby
begin
  # Delete assignment
  data, status_code, headers = api_instance.delete_account_settings_assignment_with_http_info(assignment_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExceptionResponse>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsTemplateAssignmentsApi->delete_account_settings_assignment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **assignment_id** | **String** | ID of the Assignment Record |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. | [optional] |

### Return type

[**ExceptionResponse**](ExceptionResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_account_settings_assignment

> <TemplateAssignmentResponse> get_account_settings_assignment(assignment_id, opts)

Get assignment

Get an assigment for an account settings template.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::AccountSettingsTemplateAssignmentsApi.new
assignment_id = 'assignment_id_example' # String | ID of the Assignment Record
opts = {
  include_history: true, # Boolean | Defines if the entity history is included in the response
  authorization: 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
}

begin
  # Get assignment
  result = api_instance.get_account_settings_assignment(assignment_id, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsTemplateAssignmentsApi->get_account_settings_assignment: #{e}"
end
```

#### Using the get_account_settings_assignment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TemplateAssignmentResponse>, Integer, Hash)> get_account_settings_assignment_with_http_info(assignment_id, opts)

```ruby
begin
  # Get assignment
  data, status_code, headers = api_instance.get_account_settings_assignment_with_http_info(assignment_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TemplateAssignmentResponse>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsTemplateAssignmentsApi->get_account_settings_assignment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **assignment_id** | **String** | ID of the Assignment Record |  |
| **include_history** | **Boolean** | Defines if the entity history is included in the response | [optional][default to false] |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. | [optional] |

### Return type

[**TemplateAssignmentResponse**](TemplateAssignmentResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_account_settings_assignments

> <TemplateAssignmentListResponse> list_account_settings_assignments(opts)

List assignments

List account settings assignments.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::AccountSettingsTemplateAssignmentsApi.new
opts = {
  account_id: 'account_id_example', # String | Account ID of the Assignments to query. This parameter is required unless using a pagetoken.
  template_id: 'template_id_example', # String | Filter results by Template Id
  template_version: 'template_version_example', # String | Filter results Template Version
  target: 'target_example', # String | Filter results by the assignment target
  target_type: 'Account', # String | Filter results by the assignment's target type
  limit: 56, # Integer | Optional size of a single page. Default is 20 items per page. Valid range is 1 to 100
  pagetoken: 'pagetoken_example', # String | Optional Prev or Next page token returned from a previous query execution. Default is start with first page.
  sort: 'template_id', # String | If specified, the items are sorted by the value of this property
  order: 'asc', # String | Sort order
  include_history: true, # Boolean | Defines if the entity history is included in the response
  authorization: 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
}

begin
  # List assignments
  result = api_instance.list_account_settings_assignments(opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsTemplateAssignmentsApi->list_account_settings_assignments: #{e}"
end
```

#### Using the list_account_settings_assignments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TemplateAssignmentListResponse>, Integer, Hash)> list_account_settings_assignments_with_http_info(opts)

```ruby
begin
  # List assignments
  data, status_code, headers = api_instance.list_account_settings_assignments_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TemplateAssignmentListResponse>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsTemplateAssignmentsApi->list_account_settings_assignments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID of the Assignments to query. This parameter is required unless using a pagetoken. | [optional] |
| **template_id** | **String** | Filter results by Template Id | [optional] |
| **template_version** | **String** | Filter results Template Version | [optional] |
| **target** | **String** | Filter results by the assignment target | [optional] |
| **target_type** | **String** | Filter results by the assignment&#39;s target type | [optional] |
| **limit** | **Integer** | Optional size of a single page. Default is 20 items per page. Valid range is 1 to 100 | [optional][default to 20] |
| **pagetoken** | **String** | Optional Prev or Next page token returned from a previous query execution. Default is start with first page. | [optional] |
| **sort** | **String** | If specified, the items are sorted by the value of this property | [optional][default to &#39;created_at&#39;] |
| **order** | **String** | Sort order | [optional][default to &#39;asc&#39;] |
| **include_history** | **Boolean** | Defines if the entity history is included in the response | [optional][default to false] |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. | [optional] |

### Return type

[**TemplateAssignmentListResponse**](TemplateAssignmentListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_account_settings_assignment

> <TemplateAssignmentResponse> update_account_settings_assignment(assignment_id, if_match, update_template_assignment_request, opts)

Update assignment

Update an account settings assignment. Call this method to retry failed assignments or migrate the settings in child accounts to a new version.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::AccountSettingsTemplateAssignmentsApi.new
assignment_id = 'assignment_id_example' # String | ID of the Assignment Record
if_match = 'if_match_example' # String | Version of the assignment to be updated. Specify the version that you retrieved when reading the assignment. This value  helps identifying parallel usage of this API. Pass * to indicate to update any version available. This might result in stale updates. 
update_template_assignment_request = IbmCloudIam::UpdateTemplateAssignmentRequest.new({template_version: 3.56}) # UpdateTemplateAssignmentRequest | Request to update an assignment
opts = {
  authorization: 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
}

begin
  # Update assignment
  result = api_instance.update_account_settings_assignment(assignment_id, if_match, update_template_assignment_request, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsTemplateAssignmentsApi->update_account_settings_assignment: #{e}"
end
```

#### Using the update_account_settings_assignment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TemplateAssignmentResponse>, Integer, Hash)> update_account_settings_assignment_with_http_info(assignment_id, if_match, update_template_assignment_request, opts)

```ruby
begin
  # Update assignment
  data, status_code, headers = api_instance.update_account_settings_assignment_with_http_info(assignment_id, if_match, update_template_assignment_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TemplateAssignmentResponse>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsTemplateAssignmentsApi->update_account_settings_assignment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **assignment_id** | **String** | ID of the Assignment Record |  |
| **if_match** | **String** | Version of the assignment to be updated. Specify the version that you retrieved when reading the assignment. This value  helps identifying parallel usage of this API. Pass * to indicate to update any version available. This might result in stale updates.  |  |
| **update_template_assignment_request** | [**UpdateTemplateAssignmentRequest**](UpdateTemplateAssignmentRequest.md) | Request to update an assignment |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. | [optional] |

### Return type

[**TemplateAssignmentResponse**](TemplateAssignmentResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

