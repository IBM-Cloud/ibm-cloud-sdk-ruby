# IbmCloudGlobalTagging::TagsApi

All URIs are relative to *https://tags.global-search-tagging.cloud.ibm.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**attach_tag**](TagsApi.md#attach_tag) | **POST** /v3/tags/attach | Attach tags |
| [**create_tag**](TagsApi.md#create_tag) | **POST** /v3/tags | Create an access management tag |
| [**delete_tag**](TagsApi.md#delete_tag) | **DELETE** /v3/tags/{tag_name} | Delete an unused tag |
| [**delete_tag_all**](TagsApi.md#delete_tag_all) | **DELETE** /v3/tags | Delete all unused tags |
| [**detach_tag**](TagsApi.md#detach_tag) | **POST** /v3/tags/detach | Detach tags |
| [**list_tags**](TagsApi.md#list_tags) | **GET** /v3/tags | Get all tags |


## attach_tag

> <TagResults> attach_tag(attach_tag_request, opts)

Attach tags

Attaches one or more tags to one or more resources. Each resource can have no more than 1000 tags per each 'user' and 'service' type, and no more than 250 'access' tags (which is the account limit). 

### Examples

```ruby
require 'time'
require 'ibm_cloud_global_tagging'
# setup authorization
IbmCloudGlobalTagging.configure do |config|
  # Configure API key authorization: IAM
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = IbmCloudGlobalTagging::TagsApi.new
attach_tag_request = IbmCloudGlobalTagging::AttachTagRequest.new # AttachTagRequest | Array of tag names and list of resource IDs on which the tags should be attached or a valid Global Search string that dynamically identifies the resources to attach tags to. In that case the query cannot resolve to more than 100 resources, otherwise the entire operation will fail. The caller must have the permission to manage tags on those resources. The operation will fail for the other resources and a specific error is returned in the operation response. For resources that are onboarded to Global Search and Tagging, the resource ID is the CRN; for IMS resources, it is the IMS ID. The maximum number of resource IDs where the tag will be attached is 100. You can specify up to 100 tags to be attached. 
opts = {
  x_ims_auth_token: 'x_ims_auth_token_example', # String | The infrastructure authentication token, which can be used for attaching an infrastructure tag. It is deprecated in favor of IAM authentication token. 
  creator_iam_id: 'creator_iam_id_example', # String | The user on whose behalf the attach operation must be performed (_for administrators only_). 
  created_at: 'created_at_example', # String | The time when the tag creation must be recorded (_for administrators only_). 
  x_request_id: 'x_request_id_example', # String | An alphanumeric string that is used to trace the request. The value  may include ASCII alphanumerics and any of following segment separators: space ( ), comma (,), hyphen, (-), and underscore (_) and may have a length up to 1024 bytes. The value is considered invalid and must be ignored if that value includes any other character or is longer than 1024 bytes or is fewer than 8 characters. If not specified or invalid, it is automatically replaced by a random (version 4) UUID.
  x_correlation_id: 'x_correlation_id_example', # String | An alphanumeric string that is used to trace the request as a part of a larger context: the same value is used for downstream requests and retries of those requests. The value may include ASCII alphanumerics and any of following segment separators: space ( ), comma (,), hyphen, (-), and underscore (_) and may have a length up to 1024 bytes. The value is considered invalid and must be ignored if that value includes any other character or is longer than 1024 bytes or is fewer than 8 characters. If not specified or invalid, it is automatically replaced by a random (version 4) UUID.
  account_id: 'account_id_example', # String | The ID of the billing account of the tagged resource. It is a required parameter if `tag_type` is set to `service`. Otherwise, it is inferred from the authorization IAM token. 
  tag_type: 'user', # String | The type of the tag. Supported values are `user`, `service` and `access`. `service` and `access` are not supported for IMS resources. 
  replace: true, # Boolean | Flag to request replacement of all attached tags. Set `true` if you want to replace all tags attached to the resource with the current ones. Default value is false. 
  update: true # Boolean | Flag to request update of attached tags in the format `key:value`. Here's how it works for each tag in the request body: If the tag to attach is in the format `key:value`, the System will atomically detach all existing tags starting with `key:` and attach the new `key:value` tag. If no such tags exist, a new `key:value` tag will be attached. If the tag is not in the `key:value` format (e.g., a simple label), the System will attach the label as usual. The update query parameter is available for user and access management tags, but not for service tags. 
}

begin
  # Attach tags
  result = api_instance.attach_tag(attach_tag_request, opts)
  p result
rescue IbmCloudGlobalTagging::ApiError => e
  puts "Error when calling TagsApi->attach_tag: #{e}"
end
```

#### Using the attach_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TagResults>, Integer, Hash)> attach_tag_with_http_info(attach_tag_request, opts)

```ruby
begin
  # Attach tags
  data, status_code, headers = api_instance.attach_tag_with_http_info(attach_tag_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TagResults>
rescue IbmCloudGlobalTagging::ApiError => e
  puts "Error when calling TagsApi->attach_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attach_tag_request** | [**AttachTagRequest**](AttachTagRequest.md) | Array of tag names and list of resource IDs on which the tags should be attached or a valid Global Search string that dynamically identifies the resources to attach tags to. In that case the query cannot resolve to more than 100 resources, otherwise the entire operation will fail. The caller must have the permission to manage tags on those resources. The operation will fail for the other resources and a specific error is returned in the operation response. For resources that are onboarded to Global Search and Tagging, the resource ID is the CRN; for IMS resources, it is the IMS ID. The maximum number of resource IDs where the tag will be attached is 100. You can specify up to 100 tags to be attached.  |  |
| **x_ims_auth_token** | **String** | The infrastructure authentication token, which can be used for attaching an infrastructure tag. It is deprecated in favor of IAM authentication token.  | [optional] |
| **creator_iam_id** | **String** | The user on whose behalf the attach operation must be performed (_for administrators only_).  | [optional] |
| **created_at** | **String** | The time when the tag creation must be recorded (_for administrators only_).  | [optional] |
| **x_request_id** | **String** | An alphanumeric string that is used to trace the request. The value  may include ASCII alphanumerics and any of following segment separators: space ( ), comma (,), hyphen, (-), and underscore (_) and may have a length up to 1024 bytes. The value is considered invalid and must be ignored if that value includes any other character or is longer than 1024 bytes or is fewer than 8 characters. If not specified or invalid, it is automatically replaced by a random (version 4) UUID. | [optional] |
| **x_correlation_id** | **String** | An alphanumeric string that is used to trace the request as a part of a larger context: the same value is used for downstream requests and retries of those requests. The value may include ASCII alphanumerics and any of following segment separators: space ( ), comma (,), hyphen, (-), and underscore (_) and may have a length up to 1024 bytes. The value is considered invalid and must be ignored if that value includes any other character or is longer than 1024 bytes or is fewer than 8 characters. If not specified or invalid, it is automatically replaced by a random (version 4) UUID. | [optional] |
| **account_id** | **String** | The ID of the billing account of the tagged resource. It is a required parameter if &#x60;tag_type&#x60; is set to &#x60;service&#x60;. Otherwise, it is inferred from the authorization IAM token.  | [optional] |
| **tag_type** | **String** | The type of the tag. Supported values are &#x60;user&#x60;, &#x60;service&#x60; and &#x60;access&#x60;. &#x60;service&#x60; and &#x60;access&#x60; are not supported for IMS resources.  | [optional][default to &#39;user&#39;] |
| **replace** | **Boolean** | Flag to request replacement of all attached tags. Set &#x60;true&#x60; if you want to replace all tags attached to the resource with the current ones. Default value is false.  | [optional][default to false] |
| **update** | **Boolean** | Flag to request update of attached tags in the format &#x60;key:value&#x60;. Here&#39;s how it works for each tag in the request body: If the tag to attach is in the format &#x60;key:value&#x60;, the System will atomically detach all existing tags starting with &#x60;key:&#x60; and attach the new &#x60;key:value&#x60; tag. If no such tags exist, a new &#x60;key:value&#x60; tag will be attached. If the tag is not in the &#x60;key:value&#x60; format (e.g., a simple label), the System will attach the label as usual. The update query parameter is available for user and access management tags, but not for service tags.  | [optional][default to false] |

### Return type

[**TagResults**](TagResults.md)

### Authorization

[IAM](../README.md#IAM)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_tag

> <CreateTagResults> create_tag(create_tag_body, opts)

Create an access management tag

Create an access management tag. To create an `access` tag, you must have the access listed in the [Granting users access to tag resources](https://cloud.ibm.com/docs/account?topic=account-access) documentation. `service` and `user` tags cannot be created upfront. They are created when they are attached for the first time to a resource. 

### Examples

```ruby
require 'time'
require 'ibm_cloud_global_tagging'
# setup authorization
IbmCloudGlobalTagging.configure do |config|
  # Configure API key authorization: IAM
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = IbmCloudGlobalTagging::TagsApi.new
create_tag_body = IbmCloudGlobalTagging::CreateTagBody.new({tag_names: ['tag_names_example']}) # CreateTagBody | An array of access management tags to be created.
opts = {
  x_request_id: 'x_request_id_example', # String | An alphanumeric string that is used to trace the request. The value  may include ASCII alphanumerics and any of following segment separators: space ( ), comma (,), hyphen, (-), and underscore (_) and may have a length up to 1024 bytes. The value is considered invalid and must be ignored if that value includes any other character or is longer than 1024 bytes or is fewer than 8 characters. If not specified or invalid, it is automatically replaced by a random (version 4) UUID.
  x_correlation_id: 'x_correlation_id_example', # String | An alphanumeric string that is used to trace the request as a part of a larger context: the same value is used for downstream requests and retries of those requests. The value may include ASCII alphanumerics and any of following segment separators: space ( ), comma (,), hyphen, (-), and underscore (_) and may have a length up to 1024 bytes. The value is considered invalid and must be ignored if that value includes any other character or is longer than 1024 bytes or is fewer than 8 characters. If not specified or invalid, it is automatically replaced by a random (version 4) UUID.
  account_id: 'account_id_example', # String | The ID of the billing account where the tag must be created. 
  tag_type: 'access' # String | The type of the tags you want to create. The only allowed value is `access`. 
}

begin
  # Create an access management tag
  result = api_instance.create_tag(create_tag_body, opts)
  p result
rescue IbmCloudGlobalTagging::ApiError => e
  puts "Error when calling TagsApi->create_tag: #{e}"
end
```

#### Using the create_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTagResults>, Integer, Hash)> create_tag_with_http_info(create_tag_body, opts)

```ruby
begin
  # Create an access management tag
  data, status_code, headers = api_instance.create_tag_with_http_info(create_tag_body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTagResults>
rescue IbmCloudGlobalTagging::ApiError => e
  puts "Error when calling TagsApi->create_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_tag_body** | [**CreateTagBody**](CreateTagBody.md) | An array of access management tags to be created. |  |
| **x_request_id** | **String** | An alphanumeric string that is used to trace the request. The value  may include ASCII alphanumerics and any of following segment separators: space ( ), comma (,), hyphen, (-), and underscore (_) and may have a length up to 1024 bytes. The value is considered invalid and must be ignored if that value includes any other character or is longer than 1024 bytes or is fewer than 8 characters. If not specified or invalid, it is automatically replaced by a random (version 4) UUID. | [optional] |
| **x_correlation_id** | **String** | An alphanumeric string that is used to trace the request as a part of a larger context: the same value is used for downstream requests and retries of those requests. The value may include ASCII alphanumerics and any of following segment separators: space ( ), comma (,), hyphen, (-), and underscore (_) and may have a length up to 1024 bytes. The value is considered invalid and must be ignored if that value includes any other character or is longer than 1024 bytes or is fewer than 8 characters. If not specified or invalid, it is automatically replaced by a random (version 4) UUID. | [optional] |
| **account_id** | **String** | The ID of the billing account where the tag must be created.  | [optional] |
| **tag_type** | **String** | The type of the tags you want to create. The only allowed value is &#x60;access&#x60;.  | [optional][default to &#39;access&#39;] |

### Return type

[**CreateTagResults**](CreateTagResults.md)

### Authorization

[IAM](../README.md#IAM)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_tag

> <DeleteTagResults> delete_tag(tag_name, opts)

Delete an unused tag

Delete an existing tag. A tag can be deleted only if it is not attached to any resource. 

### Examples

```ruby
require 'time'
require 'ibm_cloud_global_tagging'
# setup authorization
IbmCloudGlobalTagging.configure do |config|
  # Configure API key authorization: IAM
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = IbmCloudGlobalTagging::TagsApi.new
tag_name = 'tag_name_example' # String | The name of tag to be deleted.
opts = {
  x_ims_auth_token: 'x_ims_auth_token_example', # String | The infrastructure authentication token, which can be used for for deleting an infrastructure tag. It is deprecated in favor of IAM authentication token. 
  x_request_id: 'x_request_id_example', # String | An alphanumeric string that is used to trace the request. The value  may include ASCII alphanumerics and any of following segment separators: space ( ), comma (,), hyphen, (-), and underscore (_) and may have a length up to 1024 bytes. The value is considered invalid and must be ignored if that value includes any other character or is longer than 1024 bytes or is fewer than 8 characters. If not specified or invalid, it is automatically replaced by a random (version 4) UUID.
  x_correlation_id: 'x_correlation_id_example', # String | An alphanumeric string that is used to trace the request as a part of a larger context: the same value is used for downstream requests and retries of those requests. The value may include ASCII alphanumerics and any of following segment separators: space ( ), comma (,), hyphen, (-), and underscore (_) and may have a length up to 1024 bytes. The value is considered invalid and must be ignored if that value includes any other character or is longer than 1024 bytes or is fewer than 8 characters. If not specified or invalid, it is automatically replaced by a random (version 4) UUID.
  providers: ['ghost'], # Array<String> | Select a provider. Supported values are `ghost` and `ims`. To delete tags both in Global Search and Tagging and in IMS, use `ghost,ims`
  account_id: 'account_id_example', # String | The ID of the billing account to delete the tag for. It is a required parameter if `tag_type` is set to `service`, otherwise it is inferred from the authorization IAM token. 
  tag_type: 'user' # String | The type of the tag. Supported values are `user`, `service` and `access`. `service` and `access` are not supported for IMS resources (`providers` parameter set to `ims`). 
}

begin
  # Delete an unused tag
  result = api_instance.delete_tag(tag_name, opts)
  p result
rescue IbmCloudGlobalTagging::ApiError => e
  puts "Error when calling TagsApi->delete_tag: #{e}"
end
```

#### Using the delete_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteTagResults>, Integer, Hash)> delete_tag_with_http_info(tag_name, opts)

```ruby
begin
  # Delete an unused tag
  data, status_code, headers = api_instance.delete_tag_with_http_info(tag_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteTagResults>
rescue IbmCloudGlobalTagging::ApiError => e
  puts "Error when calling TagsApi->delete_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag_name** | **String** | The name of tag to be deleted. |  |
| **x_ims_auth_token** | **String** | The infrastructure authentication token, which can be used for for deleting an infrastructure tag. It is deprecated in favor of IAM authentication token.  | [optional] |
| **x_request_id** | **String** | An alphanumeric string that is used to trace the request. The value  may include ASCII alphanumerics and any of following segment separators: space ( ), comma (,), hyphen, (-), and underscore (_) and may have a length up to 1024 bytes. The value is considered invalid and must be ignored if that value includes any other character or is longer than 1024 bytes or is fewer than 8 characters. If not specified or invalid, it is automatically replaced by a random (version 4) UUID. | [optional] |
| **x_correlation_id** | **String** | An alphanumeric string that is used to trace the request as a part of a larger context: the same value is used for downstream requests and retries of those requests. The value may include ASCII alphanumerics and any of following segment separators: space ( ), comma (,), hyphen, (-), and underscore (_) and may have a length up to 1024 bytes. The value is considered invalid and must be ignored if that value includes any other character or is longer than 1024 bytes or is fewer than 8 characters. If not specified or invalid, it is automatically replaced by a random (version 4) UUID. | [optional] |
| **providers** | [**Array&lt;String&gt;**](String.md) | Select a provider. Supported values are &#x60;ghost&#x60; and &#x60;ims&#x60;. To delete tags both in Global Search and Tagging and in IMS, use &#x60;ghost,ims&#x60; | [optional] |
| **account_id** | **String** | The ID of the billing account to delete the tag for. It is a required parameter if &#x60;tag_type&#x60; is set to &#x60;service&#x60;, otherwise it is inferred from the authorization IAM token.  | [optional] |
| **tag_type** | **String** | The type of the tag. Supported values are &#x60;user&#x60;, &#x60;service&#x60; and &#x60;access&#x60;. &#x60;service&#x60; and &#x60;access&#x60; are not supported for IMS resources (&#x60;providers&#x60; parameter set to &#x60;ims&#x60;).  | [optional][default to &#39;user&#39;] |

### Return type

[**DeleteTagResults**](DeleteTagResults.md)

### Authorization

[IAM](../README.md#IAM)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_tag_all

> <DeleteTagsResult> delete_tag_all(opts)

Delete all unused tags

Delete the tags that are not attached to any resource. 

### Examples

```ruby
require 'time'
require 'ibm_cloud_global_tagging'
# setup authorization
IbmCloudGlobalTagging.configure do |config|
  # Configure API key authorization: IAM
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = IbmCloudGlobalTagging::TagsApi.new
opts = {
  x_ims_auth_token: 'x_ims_auth_token_example', # String | The infrastructure authentication token, which can be used for for deleting the infrastructure tags. It is deprecated in favor of IAM authentication token. 
  x_request_id: 'x_request_id_example', # String | An alphanumeric string that is used to trace the request. The value  may include ASCII alphanumerics and any of following segment separators: space ( ), comma (,), hyphen, (-), and underscore (_) and may have a length up to 1024 bytes. The value is considered invalid and must be ignored if that value includes any other character or is longer than 1024 bytes or is fewer than 8 characters. If not specified or invalid, it is automatically replaced by a random (version 4) UUID.
  x_correlation_id: 'x_correlation_id_example', # String | An alphanumeric string that is used to trace the request as a part of a larger context: the same value is used for downstream requests and retries of those requests. The value may include ASCII alphanumerics and any of following segment separators: space ( ), comma (,), hyphen, (-), and underscore (_) and may have a length up to 1024 bytes. The value is considered invalid and must be ignored if that value includes any other character or is longer than 1024 bytes or is fewer than 8 characters. If not specified or invalid, it is automatically replaced by a random (version 4) UUID.
  providers: 'ghost', # String | Select a provider. Supported values are `ghost` and `ims`.
  account_id: 'account_id_example', # String | The ID of the billing account to delete the tags for. If it is not set, then it is taken from the authorization token. It is a required parameter if `tag_type` is set to `service`. 
  tag_type: 'user' # String | The type of the tag. Supported values are `user`, `service` and `access`. `service` and `access` are not supported for IMS resources (`providers` parameter set to `ims`). 
}

begin
  # Delete all unused tags
  result = api_instance.delete_tag_all(opts)
  p result
rescue IbmCloudGlobalTagging::ApiError => e
  puts "Error when calling TagsApi->delete_tag_all: #{e}"
end
```

#### Using the delete_tag_all_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteTagsResult>, Integer, Hash)> delete_tag_all_with_http_info(opts)

```ruby
begin
  # Delete all unused tags
  data, status_code, headers = api_instance.delete_tag_all_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteTagsResult>
rescue IbmCloudGlobalTagging::ApiError => e
  puts "Error when calling TagsApi->delete_tag_all_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_ims_auth_token** | **String** | The infrastructure authentication token, which can be used for for deleting the infrastructure tags. It is deprecated in favor of IAM authentication token.  | [optional] |
| **x_request_id** | **String** | An alphanumeric string that is used to trace the request. The value  may include ASCII alphanumerics and any of following segment separators: space ( ), comma (,), hyphen, (-), and underscore (_) and may have a length up to 1024 bytes. The value is considered invalid and must be ignored if that value includes any other character or is longer than 1024 bytes or is fewer than 8 characters. If not specified or invalid, it is automatically replaced by a random (version 4) UUID. | [optional] |
| **x_correlation_id** | **String** | An alphanumeric string that is used to trace the request as a part of a larger context: the same value is used for downstream requests and retries of those requests. The value may include ASCII alphanumerics and any of following segment separators: space ( ), comma (,), hyphen, (-), and underscore (_) and may have a length up to 1024 bytes. The value is considered invalid and must be ignored if that value includes any other character or is longer than 1024 bytes or is fewer than 8 characters. If not specified or invalid, it is automatically replaced by a random (version 4) UUID. | [optional] |
| **providers** | **String** | Select a provider. Supported values are &#x60;ghost&#x60; and &#x60;ims&#x60;. | [optional][default to &#39;ghost&#39;] |
| **account_id** | **String** | The ID of the billing account to delete the tags for. If it is not set, then it is taken from the authorization token. It is a required parameter if &#x60;tag_type&#x60; is set to &#x60;service&#x60;.  | [optional] |
| **tag_type** | **String** | The type of the tag. Supported values are &#x60;user&#x60;, &#x60;service&#x60; and &#x60;access&#x60;. &#x60;service&#x60; and &#x60;access&#x60; are not supported for IMS resources (&#x60;providers&#x60; parameter set to &#x60;ims&#x60;).  | [optional][default to &#39;user&#39;] |

### Return type

[**DeleteTagsResult**](DeleteTagsResult.md)

### Authorization

[IAM](../README.md#IAM)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## detach_tag

> <TagResults> detach_tag(detach_tag_request, opts)

Detach tags

Detaches one or more tags from one or more resources. 

### Examples

```ruby
require 'time'
require 'ibm_cloud_global_tagging'
# setup authorization
IbmCloudGlobalTagging.configure do |config|
  # Configure API key authorization: IAM
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = IbmCloudGlobalTagging::TagsApi.new
detach_tag_request = IbmCloudGlobalTagging::DetachTagRequest.new # DetachTagRequest | Array of tag names and the list of resources to detach tags from, or a valid Global Search string that dynamically identifies the resources to detach tags from. In that case the query cannot resolve to more than 100 resources, otherwise the entire operation will fail. The caller must have the permission to manage tags on those resources. The operation will fail for the other resources and a specific error is returned in the operation response. 
opts = {
  x_ims_auth_token: 'x_ims_auth_token_example', # String | The infrastructure authentication token, which can be used for detaching an infrastructure tag. It is deprecated in favor of IAM authentication token. 
  x_request_id: 'x_request_id_example', # String | An alphanumeric string that is used to trace the request. The value  may include ASCII alphanumerics and any of following segment separators: space ( ), comma (,), hyphen, (-), and underscore (_) and may have a length up to 1024 bytes. The value is considered invalid and must be ignored if that value includes any other character or is longer than 1024 bytes or is fewer than 8 characters. If not specified or invalid, it is automatically replaced by a random (version 4) UUID.
  x_correlation_id: 'x_correlation_id_example', # String | An alphanumeric string that is used to trace the request as a part of a larger context: the same value is used for downstream requests and retries of those requests. The value may include ASCII alphanumerics and any of following segment separators: space ( ), comma (,), hyphen, (-), and underscore (_) and may have a length up to 1024 bytes. The value is considered invalid and must be ignored if that value includes any other character or is longer than 1024 bytes or is fewer than 8 characters. If not specified or invalid, it is automatically replaced by a random (version 4) UUID.
  account_id: 'account_id_example', # String | The ID of the billing account of the untagged resource. It is a required parameter if `tag_type` is set to `service`, otherwise it is inferred from the authorization IAM token. 
  tag_type: 'user' # String | The type of the tag. Supported values are `user`, `service` and `access`. `service` and `access` are not supported for IMS resources. 
}

begin
  # Detach tags
  result = api_instance.detach_tag(detach_tag_request, opts)
  p result
rescue IbmCloudGlobalTagging::ApiError => e
  puts "Error when calling TagsApi->detach_tag: #{e}"
end
```

#### Using the detach_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TagResults>, Integer, Hash)> detach_tag_with_http_info(detach_tag_request, opts)

```ruby
begin
  # Detach tags
  data, status_code, headers = api_instance.detach_tag_with_http_info(detach_tag_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TagResults>
rescue IbmCloudGlobalTagging::ApiError => e
  puts "Error when calling TagsApi->detach_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **detach_tag_request** | [**DetachTagRequest**](DetachTagRequest.md) | Array of tag names and the list of resources to detach tags from, or a valid Global Search string that dynamically identifies the resources to detach tags from. In that case the query cannot resolve to more than 100 resources, otherwise the entire operation will fail. The caller must have the permission to manage tags on those resources. The operation will fail for the other resources and a specific error is returned in the operation response.  |  |
| **x_ims_auth_token** | **String** | The infrastructure authentication token, which can be used for detaching an infrastructure tag. It is deprecated in favor of IAM authentication token.  | [optional] |
| **x_request_id** | **String** | An alphanumeric string that is used to trace the request. The value  may include ASCII alphanumerics and any of following segment separators: space ( ), comma (,), hyphen, (-), and underscore (_) and may have a length up to 1024 bytes. The value is considered invalid and must be ignored if that value includes any other character or is longer than 1024 bytes or is fewer than 8 characters. If not specified or invalid, it is automatically replaced by a random (version 4) UUID. | [optional] |
| **x_correlation_id** | **String** | An alphanumeric string that is used to trace the request as a part of a larger context: the same value is used for downstream requests and retries of those requests. The value may include ASCII alphanumerics and any of following segment separators: space ( ), comma (,), hyphen, (-), and underscore (_) and may have a length up to 1024 bytes. The value is considered invalid and must be ignored if that value includes any other character or is longer than 1024 bytes or is fewer than 8 characters. If not specified or invalid, it is automatically replaced by a random (version 4) UUID. | [optional] |
| **account_id** | **String** | The ID of the billing account of the untagged resource. It is a required parameter if &#x60;tag_type&#x60; is set to &#x60;service&#x60;, otherwise it is inferred from the authorization IAM token.  | [optional] |
| **tag_type** | **String** | The type of the tag. Supported values are &#x60;user&#x60;, &#x60;service&#x60; and &#x60;access&#x60;. &#x60;service&#x60; and &#x60;access&#x60; are not supported for IMS resources.  | [optional][default to &#39;user&#39;] |

### Return type

[**TagResults**](TagResults.md)

### Authorization

[IAM](../README.md#IAM)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_tags

> <TagList> list_tags(opts)

Get all tags

Lists all tags that are in a billing account. Use the `attached_to` parameter to return the list of tags that are attached to the specified resource. 

### Examples

```ruby
require 'time'
require 'ibm_cloud_global_tagging'
# setup authorization
IbmCloudGlobalTagging.configure do |config|
  # Configure API key authorization: IAM
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = IbmCloudGlobalTagging::TagsApi.new
opts = {
  x_ims_auth_token: 'x_ims_auth_token_example', # String | The infrastructure authentication token, which can be used for searching the infrastructure tags. It is deprecated in favor of IAM authentication token. 
  x_request_id: 'x_request_id_example', # String | An alphanumeric string that is used to trace the request. The value  may include ASCII alphanumerics and any of following segment separators: space ( ), comma (,), hyphen, (-), and underscore (_) and may have a length up to 1024 bytes. The value is considered invalid and must be ignored if that value includes any other character or is longer than 1024 bytes or is fewer than 8 characters. If not specified or invalid, it is automatically replaced by a random (version 4) UUID.
  x_correlation_id: 'x_correlation_id_example', # String | An alphanumeric string that is used to trace the request as a part of a larger context: the same value is used for downstream requests and retries of those requests. The value may include ASCII alphanumerics and any of following segment separators: space ( ), comma (,), hyphen, (-), and underscore (_) and may have a length up to 1024 bytes. The value is considered invalid and must be ignored if that value includes any other character or is longer than 1024 bytes or is fewer than 8 characters. If not specified or invalid, it is automatically replaced by a random (version 4) UUID.
  account_id: 'account_id_example', # String | The ID of the billing account to list the tags for. If it is not set, then it is taken from the authorization token. This parameter is required if `tag_type` is set to `service`. 
  tag_type: 'user', # String | The type of the tag you want to list. Supported values are `user`, `service` and `access`. 
  full_data: true, # Boolean | If set to `true`, this query returns the provider, `ghost`, `ims` or `ghost,ims`, where the tag exists and the number of attached resources. 
  providers: ['ghost'], # Array<String> | Select a provider. Supported values are `ghost` and `ims`. To list both Global Search and Tagging tags and infrastructure tags, use `ghost,ims`. `service` and `access` tags can only be attached to resources that are onboarded to Global Search and Tagging, so you should not set this parameter to list them. 
  attached_to: 'attached_to_example', # String | If you want to return only the list of tags that are attached to a specified resource, pass the ID of the resource on this parameter. For resources that are onboarded to Global Search and Tagging, the resource ID is the CRN; for IMS resources, it is the IMS ID. When using this parameter, you must specify the appropriate provider (`ims` or `ghost`). 
  offset: 56, # Integer | The offset is the index of the item from which you want to start returning data from. 
  limit: 56, # Integer | The number of tags to return.
  timeout: 56, # Integer | The timeout in milliseconds, bounds the request to run within the specified time value. It returns the accumulated results until time runs out. 
  order_by_name: 'asc', # String | Order the output by tag name.
  attached_only: true # Boolean | Filter on attached tags. If `true`, it returns only tags that are attached to one or more resources. If `false`, it returns all tags. 
}

begin
  # Get all tags
  result = api_instance.list_tags(opts)
  p result
rescue IbmCloudGlobalTagging::ApiError => e
  puts "Error when calling TagsApi->list_tags: #{e}"
end
```

#### Using the list_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TagList>, Integer, Hash)> list_tags_with_http_info(opts)

```ruby
begin
  # Get all tags
  data, status_code, headers = api_instance.list_tags_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TagList>
rescue IbmCloudGlobalTagging::ApiError => e
  puts "Error when calling TagsApi->list_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_ims_auth_token** | **String** | The infrastructure authentication token, which can be used for searching the infrastructure tags. It is deprecated in favor of IAM authentication token.  | [optional] |
| **x_request_id** | **String** | An alphanumeric string that is used to trace the request. The value  may include ASCII alphanumerics and any of following segment separators: space ( ), comma (,), hyphen, (-), and underscore (_) and may have a length up to 1024 bytes. The value is considered invalid and must be ignored if that value includes any other character or is longer than 1024 bytes or is fewer than 8 characters. If not specified or invalid, it is automatically replaced by a random (version 4) UUID. | [optional] |
| **x_correlation_id** | **String** | An alphanumeric string that is used to trace the request as a part of a larger context: the same value is used for downstream requests and retries of those requests. The value may include ASCII alphanumerics and any of following segment separators: space ( ), comma (,), hyphen, (-), and underscore (_) and may have a length up to 1024 bytes. The value is considered invalid and must be ignored if that value includes any other character or is longer than 1024 bytes or is fewer than 8 characters. If not specified or invalid, it is automatically replaced by a random (version 4) UUID. | [optional] |
| **account_id** | **String** | The ID of the billing account to list the tags for. If it is not set, then it is taken from the authorization token. This parameter is required if &#x60;tag_type&#x60; is set to &#x60;service&#x60;.  | [optional] |
| **tag_type** | **String** | The type of the tag you want to list. Supported values are &#x60;user&#x60;, &#x60;service&#x60; and &#x60;access&#x60;.  | [optional][default to &#39;user&#39;] |
| **full_data** | **Boolean** | If set to &#x60;true&#x60;, this query returns the provider, &#x60;ghost&#x60;, &#x60;ims&#x60; or &#x60;ghost,ims&#x60;, where the tag exists and the number of attached resources.  | [optional][default to false] |
| **providers** | [**Array&lt;String&gt;**](String.md) | Select a provider. Supported values are &#x60;ghost&#x60; and &#x60;ims&#x60;. To list both Global Search and Tagging tags and infrastructure tags, use &#x60;ghost,ims&#x60;. &#x60;service&#x60; and &#x60;access&#x60; tags can only be attached to resources that are onboarded to Global Search and Tagging, so you should not set this parameter to list them.  | [optional] |
| **attached_to** | **String** | If you want to return only the list of tags that are attached to a specified resource, pass the ID of the resource on this parameter. For resources that are onboarded to Global Search and Tagging, the resource ID is the CRN; for IMS resources, it is the IMS ID. When using this parameter, you must specify the appropriate provider (&#x60;ims&#x60; or &#x60;ghost&#x60;).  | [optional] |
| **offset** | **Integer** | The offset is the index of the item from which you want to start returning data from.  | [optional][default to 0] |
| **limit** | **Integer** | The number of tags to return. | [optional][default to 100] |
| **timeout** | **Integer** | The timeout in milliseconds, bounds the request to run within the specified time value. It returns the accumulated results until time runs out.  | [optional][default to 0] |
| **order_by_name** | **String** | Order the output by tag name. | [optional][default to &#39;asc&#39;] |
| **attached_only** | **Boolean** | Filter on attached tags. If &#x60;true&#x60;, it returns only tags that are attached to one or more resources. If &#x60;false&#x60;, it returns all tags.  | [optional][default to false] |

### Return type

[**TagList**](TagList.md)

### Authorization

[IAM](../README.md#IAM)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

