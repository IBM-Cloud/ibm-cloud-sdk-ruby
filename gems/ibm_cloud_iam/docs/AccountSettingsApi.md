# IbmCloudIam::AccountSettingsApi

All URIs are relative to *https://iam.cloud.ibm.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_account_settings**](AccountSettingsApi.md#get_account_settings) | **GET** /v1/accounts/{account_id}/settings/identity | Get account configurations |
| [**get_effective_account_settings**](AccountSettingsApi.md#get_effective_account_settings) | **GET** /v1/accounts/{account_id}/effective_settings/identity | Get effective account settings configuration |
| [**update_account_settings**](AccountSettingsApi.md#update_account_settings) | **PUT** /v1/accounts/{account_id}/settings/identity | Update account configurations |


## get_account_settings

> <AccountSettingsResponse> get_account_settings(account_id, authorization, opts)

Get account configurations

Returns the details of an account's configuration.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::AccountSettingsApi.new
account_id = 'account_id_example' # String | Unique ID of the account.
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
opts = {
  include_history: true, # Boolean | Defines if the entity history is included in the response.
  resolve_user_mfa: true # Boolean | Enrich MFA exemptions with user PI.
}

begin
  # Get account configurations
  result = api_instance.get_account_settings(account_id, authorization, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsApi->get_account_settings: #{e}"
end
```

#### Using the get_account_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountSettingsResponse>, Integer, Hash)> get_account_settings_with_http_info(account_id, authorization, opts)

```ruby
begin
  # Get account configurations
  data, status_code, headers = api_instance.get_account_settings_with_http_info(account_id, authorization, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountSettingsResponse>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsApi->get_account_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Unique ID of the account. |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |
| **include_history** | **Boolean** | Defines if the entity history is included in the response. | [optional][default to false] |
| **resolve_user_mfa** | **Boolean** | Enrich MFA exemptions with user PI. | [optional][default to false] |

### Return type

[**AccountSettingsResponse**](AccountSettingsResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_effective_account_settings

> <EffectiveAccountSettingsResponse> get_effective_account_settings(account_id, authorization, opts)

Get effective account settings configuration

Returns effective account settings for given account ID

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::AccountSettingsApi.new
account_id = 'account_id_example' # String | Unique ID of the account.
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
opts = {
  include_history: true, # Boolean | Defines if the entity history is included in the response.
  resolve_user_mfa: true # Boolean | Enrich MFA exemptions with user information.
}

begin
  # Get effective account settings configuration
  result = api_instance.get_effective_account_settings(account_id, authorization, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsApi->get_effective_account_settings: #{e}"
end
```

#### Using the get_effective_account_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EffectiveAccountSettingsResponse>, Integer, Hash)> get_effective_account_settings_with_http_info(account_id, authorization, opts)

```ruby
begin
  # Get effective account settings configuration
  data, status_code, headers = api_instance.get_effective_account_settings_with_http_info(account_id, authorization, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EffectiveAccountSettingsResponse>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsApi->get_effective_account_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Unique ID of the account. |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |
| **include_history** | **Boolean** | Defines if the entity history is included in the response. | [optional][default to false] |
| **resolve_user_mfa** | **Boolean** | Enrich MFA exemptions with user information. | [optional][default to false] |

### Return type

[**EffectiveAccountSettingsResponse**](EffectiveAccountSettingsResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_account_settings

> <AccountSettingsResponse> update_account_settings(authorization, if_match, account_id, account_settings_request)

Update account configurations

Allows a user to configure settings on their account with regards to MFA, MFA excemption list, session lifetimes, access control for creating new identities, and enforcing IP restrictions on token creation.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::AccountSettingsApi.new
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
if_match = 'if_match_example' # String | Version of the account settings to be updated. Specify the version that you retrieved as entity_tag (ETag header) when reading the account. This value helps identifying parallel usage of this API. Pass * to indicate to update any version available. This might result in stale updates.
account_id = 'account_id_example' # String | The id of the account to update the settings for.
account_settings_request = IbmCloudIam::AccountSettingsRequest.new # AccountSettingsRequest | Request to update an account's settings.

begin
  # Update account configurations
  result = api_instance.update_account_settings(authorization, if_match, account_id, account_settings_request)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsApi->update_account_settings: #{e}"
end
```

#### Using the update_account_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountSettingsResponse>, Integer, Hash)> update_account_settings_with_http_info(authorization, if_match, account_id, account_settings_request)

```ruby
begin
  # Update account configurations
  data, status_code, headers = api_instance.update_account_settings_with_http_info(authorization, if_match, account_id, account_settings_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountSettingsResponse>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsApi->update_account_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |
| **if_match** | **String** | Version of the account settings to be updated. Specify the version that you retrieved as entity_tag (ETag header) when reading the account. This value helps identifying parallel usage of this API. Pass * to indicate to update any version available. This might result in stale updates. |  |
| **account_id** | **String** | The id of the account to update the settings for. |  |
| **account_settings_request** | [**AccountSettingsRequest**](AccountSettingsRequest.md) | Request to update an account&#39;s settings. |  |

### Return type

[**AccountSettingsResponse**](AccountSettingsResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

