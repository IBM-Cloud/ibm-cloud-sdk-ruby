# IbmCloudIam::AccountSettingsForIdPApi

All URIs are relative to *https://iam.cloud.ibm.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_id_p_setting**](AccountSettingsForIdPApi.md#add_id_p_setting) | **POST** /v2/loginsettings/{account_id}/idps/{idp_id} | Add IdP Setting |
| [**get_id_p_setting**](AccountSettingsForIdPApi.md#get_id_p_setting) | **GET** /v2/loginsettings/{account_id}/idps/{idp_id} | Get IdP setting |
| [**get_login_settings**](AccountSettingsForIdPApi.md#get_login_settings) | **GET** /v2/loginsettings/{account_id} | Get account login settings |
| [**list_id_p_settings**](AccountSettingsForIdPApi.md#list_id_p_settings) | **GET** /v2/loginsettings/{account_id}/idps | List IdP Settings |
| [**remove_id_p_setting**](AccountSettingsForIdPApi.md#remove_id_p_setting) | **DELETE** /v2/loginsettings/{account_id}/idps/{idp_id} | Remove IdP Setting |
| [**update_id_p_setting**](AccountSettingsForIdPApi.md#update_id_p_setting) | **PUT** /v2/loginsettings/{account_id}/idps/{idp_id} | Update IdP Setting |
| [**update_login_settings**](AccountSettingsForIdPApi.md#update_login_settings) | **PUT** /v2/loginsettings/{account_id} | Update account login settings |


## add_id_p_setting

> <AccountIdpSettings> add_id_p_setting(account_id, idp_id, authorization, add_account_idp_setting_request)

Add IdP Setting



### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::AccountSettingsForIdPApi.new
account_id = 'account_id_example' # String | Account which is bound to the IDP
idp_id = 'idp_id_example' # String | Identity provider ID
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Please make sure that the provided token has the required authority for the request.
add_account_idp_setting_request = IbmCloudIam::AddAccountIdpSettingRequest.new({cloud_user_strategy: 'STATIC', active: false, ui_default: false}) # AddAccountIdpSettingRequest | Request to add idp

begin
  # Add IdP Setting
  result = api_instance.add_id_p_setting(account_id, idp_id, authorization, add_account_idp_setting_request)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsForIdPApi->add_id_p_setting: #{e}"
end
```

#### Using the add_id_p_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountIdpSettings>, Integer, Hash)> add_id_p_setting_with_http_info(account_id, idp_id, authorization, add_account_idp_setting_request)

```ruby
begin
  # Add IdP Setting
  data, status_code, headers = api_instance.add_id_p_setting_with_http_info(account_id, idp_id, authorization, add_account_idp_setting_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountIdpSettings>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsForIdPApi->add_id_p_setting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account which is bound to the IDP |  |
| **idp_id** | **String** | Identity provider ID |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request. |  |
| **add_account_idp_setting_request** | [**AddAccountIdpSettingRequest**](AddAccountIdpSettingRequest.md) | Request to add idp |  |

### Return type

[**AccountIdpSettings**](AccountIdpSettings.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_id_p_setting

> <AccountIdpSettings> get_id_p_setting(account_id, idp_id, authorization)

Get IdP setting

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::AccountSettingsForIdPApi.new
account_id = 'account_id_example' # String | Account which is bound to the IDP
idp_id = 'idp_id_example' # String | Identity provider ID
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Please make sure that the provided token has the required authority for the request.

begin
  # Get IdP setting
  result = api_instance.get_id_p_setting(account_id, idp_id, authorization)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsForIdPApi->get_id_p_setting: #{e}"
end
```

#### Using the get_id_p_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountIdpSettings>, Integer, Hash)> get_id_p_setting_with_http_info(account_id, idp_id, authorization)

```ruby
begin
  # Get IdP setting
  data, status_code, headers = api_instance.get_id_p_setting_with_http_info(account_id, idp_id, authorization)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountIdpSettings>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsForIdPApi->get_id_p_setting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account which is bound to the IDP |  |
| **idp_id** | **String** | Identity provider ID |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request. |  |

### Return type

[**AccountIdpSettings**](AccountIdpSettings.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_login_settings

> <AccountLoginSettings> get_login_settings(account_id, authorization)

Get account login settings



### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::AccountSettingsForIdPApi.new
account_id = 'account_id_example' # String | Account which is bound to the alias
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Please make sure that the provided token has the required authority for the request.

begin
  # Get account login settings
  result = api_instance.get_login_settings(account_id, authorization)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsForIdPApi->get_login_settings: #{e}"
end
```

#### Using the get_login_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountLoginSettings>, Integer, Hash)> get_login_settings_with_http_info(account_id, authorization)

```ruby
begin
  # Get account login settings
  data, status_code, headers = api_instance.get_login_settings_with_http_info(account_id, authorization)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountLoginSettings>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsForIdPApi->get_login_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account which is bound to the alias |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request. |  |

### Return type

[**AccountLoginSettings**](AccountLoginSettings.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_id_p_settings

> <ListIdPSettings200Response> list_id_p_settings(authorization, account_id, opts)

List IdP Settings

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::AccountSettingsForIdPApi.new
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Please make sure that the provided token has the required authority for the request.
account_id = 'account_id_example' # String | Account which is bound to the IDP
opts = {
  type: 'consumeable', # String | Type of IDP
  include_idp_metadata: 'include_idp_metadata_example' # String | Flag if meta-information about account and idp should be included
}

begin
  # List IdP Settings
  result = api_instance.list_id_p_settings(authorization, account_id, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsForIdPApi->list_id_p_settings: #{e}"
end
```

#### Using the list_id_p_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListIdPSettings200Response>, Integer, Hash)> list_id_p_settings_with_http_info(authorization, account_id, opts)

```ruby
begin
  # List IdP Settings
  data, status_code, headers = api_instance.list_id_p_settings_with_http_info(authorization, account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListIdPSettings200Response>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsForIdPApi->list_id_p_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request. |  |
| **account_id** | **String** | Account which is bound to the IDP |  |
| **type** | **String** | Type of IDP | [optional] |
| **include_idp_metadata** | **String** | Flag if meta-information about account and idp should be included | [optional] |

### Return type

[**ListIdPSettings200Response**](ListIdPSettings200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_id_p_setting

> remove_id_p_setting(account_id, idp_id, authorization)

Remove IdP Setting



### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::AccountSettingsForIdPApi.new
account_id = 'account_id_example' # String | Account which is bound to the IDP
idp_id = 'idp_id_example' # String | Identity provider ID
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Please make sure that the provided token has the required authority for the request.

begin
  # Remove IdP Setting
  api_instance.remove_id_p_setting(account_id, idp_id, authorization)
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsForIdPApi->remove_id_p_setting: #{e}"
end
```

#### Using the remove_id_p_setting_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> remove_id_p_setting_with_http_info(account_id, idp_id, authorization)

```ruby
begin
  # Remove IdP Setting
  data, status_code, headers = api_instance.remove_id_p_setting_with_http_info(account_id, idp_id, authorization)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsForIdPApi->remove_id_p_setting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account which is bound to the IDP |  |
| **idp_id** | **String** | Identity provider ID |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## update_id_p_setting

> <AccountIdpSettings> update_id_p_setting(account_id, idp_id, authorization, update_account_idp_setting_request)

Update IdP Setting



### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::AccountSettingsForIdPApi.new
account_id = 'account_id_example' # String | Account which is bound to the IDP
idp_id = 'idp_id_example' # String | Identity provider ID
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Please make sure that the provided token has the required authority for the request.
update_account_idp_setting_request = IbmCloudIam::UpdateAccountIdpSettingRequest.new # UpdateAccountIdpSettingRequest | Request to update idp

begin
  # Update IdP Setting
  result = api_instance.update_id_p_setting(account_id, idp_id, authorization, update_account_idp_setting_request)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsForIdPApi->update_id_p_setting: #{e}"
end
```

#### Using the update_id_p_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountIdpSettings>, Integer, Hash)> update_id_p_setting_with_http_info(account_id, idp_id, authorization, update_account_idp_setting_request)

```ruby
begin
  # Update IdP Setting
  data, status_code, headers = api_instance.update_id_p_setting_with_http_info(account_id, idp_id, authorization, update_account_idp_setting_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountIdpSettings>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsForIdPApi->update_id_p_setting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account which is bound to the IDP |  |
| **idp_id** | **String** | Identity provider ID |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request. |  |
| **update_account_idp_setting_request** | [**UpdateAccountIdpSettingRequest**](UpdateAccountIdpSettingRequest.md) | Request to update idp |  |

### Return type

[**AccountIdpSettings**](AccountIdpSettings.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_login_settings

> <AccountLoginSettings> update_login_settings(account_id, authorization, update_account_login_settings)

Update account login settings

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::AccountSettingsForIdPApi.new
account_id = 'account_id_example' # String | Account which is bound to the alias
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Please make sure that the provided token has the required authority for the request.
update_account_login_settings = IbmCloudIam::UpdateAccountLoginSettings.new # UpdateAccountLoginSettings | Request to update

begin
  # Update account login settings
  result = api_instance.update_login_settings(account_id, authorization, update_account_login_settings)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsForIdPApi->update_login_settings: #{e}"
end
```

#### Using the update_login_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountLoginSettings>, Integer, Hash)> update_login_settings_with_http_info(account_id, authorization, update_account_login_settings)

```ruby
begin
  # Update account login settings
  data, status_code, headers = api_instance.update_login_settings_with_http_info(account_id, authorization, update_account_login_settings)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountLoginSettings>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountSettingsForIdPApi->update_login_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account which is bound to the alias |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request. |  |
| **update_account_login_settings** | [**UpdateAccountLoginSettings**](UpdateAccountLoginSettings.md) | Request to update |  |

### Return type

[**AccountLoginSettings**](AccountLoginSettings.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

