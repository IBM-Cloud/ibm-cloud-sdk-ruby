# IbmCloudIam::IdentityPreferencesApi

All URIs are relative to *https://iam.cloud.ibm.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_preferences_on_scope_account**](IdentityPreferencesApi.md#delete_preferences_on_scope_account) | **DELETE** /v1/preferences/accounts/{account_id}/identities/{iam_id}/{service}/{preference_id} | Delete Identity Preference on scope account |
| [**get_all_preferences_on_scope_account**](IdentityPreferencesApi.md#get_all_preferences_on_scope_account) | **GET** /v1/preferences/accounts/{account_id}/identities/{iam_id} | Get all Identity Preferences on scope account |
| [**get_preferences_on_scope_account**](IdentityPreferencesApi.md#get_preferences_on_scope_account) | **GET** /v1/preferences/accounts/{account_id}/identities/{iam_id}/{service}/{preference_id} | Get Identity Preference on scope account |
| [**update_preference_on_scope_account**](IdentityPreferencesApi.md#update_preference_on_scope_account) | **PUT** /v1/preferences/accounts/{account_id}/identities/{iam_id}/{service}/{preference_id} | Update Identity Preference on scope account |


## delete_preferences_on_scope_account

> delete_preferences_on_scope_account(account_id, iam_id, service, preference_id, opts)

Delete Identity Preference on scope account

Delete one Identity Preference on scope `account`. For details about the preferences supported  and how the method request is authorized, refer to the description of operation  `Update Identity Preference on scope account`. 

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::IdentityPreferencesApi.new
account_id = 'account_id_example' # String | Account id to delete preference for
iam_id = 'iam_id_example' # String | IAM id to delete the preference for
service = 'service_example' # String | Service of the preference to be deleted
preference_id = 'preference_id_example' # String | Identifier of preference to be deleted
opts = {
  authorization: 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
}

begin
  # Delete Identity Preference on scope account
  api_instance.delete_preferences_on_scope_account(account_id, iam_id, service, preference_id, opts)
rescue IbmCloudIam::ApiError => e
  puts "Error when calling IdentityPreferencesApi->delete_preferences_on_scope_account: #{e}"
end
```

#### Using the delete_preferences_on_scope_account_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_preferences_on_scope_account_with_http_info(account_id, iam_id, service, preference_id, opts)

```ruby
begin
  # Delete Identity Preference on scope account
  data, status_code, headers = api_instance.delete_preferences_on_scope_account_with_http_info(account_id, iam_id, service, preference_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue IbmCloudIam::ApiError => e
  puts "Error when calling IdentityPreferencesApi->delete_preferences_on_scope_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account id to delete preference for |  |
| **iam_id** | **String** | IAM id to delete the preference for |  |
| **service** | **String** | Service of the preference to be deleted |  |
| **preference_id** | **String** | Identifier of preference to be deleted |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. | [optional] |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_preferences_on_scope_account

> <IdentityPreferencesResponse> get_all_preferences_on_scope_account(account_id, iam_id, opts)

Get all Identity Preferences on scope account

Get all Identity Preferences for one account / identity combination. For details about the preferences  supported and how the method request is authorized, refer to the description of operation  `Get Identity Preference on scope account`.  If you are not allowed to read a preference, the call will not fail. Instead, this preference is/ these preferences are not returned in the list call. 

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::IdentityPreferencesApi.new
account_id = 'account_id_example' # String | Account id to get preferences for
iam_id = 'iam_id_example' # String | IAM id to get the preferences for
opts = {
  authorization: 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
}

begin
  # Get all Identity Preferences on scope account
  result = api_instance.get_all_preferences_on_scope_account(account_id, iam_id, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling IdentityPreferencesApi->get_all_preferences_on_scope_account: #{e}"
end
```

#### Using the get_all_preferences_on_scope_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IdentityPreferencesResponse>, Integer, Hash)> get_all_preferences_on_scope_account_with_http_info(account_id, iam_id, opts)

```ruby
begin
  # Get all Identity Preferences on scope account
  data, status_code, headers = api_instance.get_all_preferences_on_scope_account_with_http_info(account_id, iam_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IdentityPreferencesResponse>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling IdentityPreferencesApi->get_all_preferences_on_scope_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account id to get preferences for |  |
| **iam_id** | **String** | IAM id to get the preferences for |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. | [optional] |

### Return type

[**IdentityPreferencesResponse**](IdentityPreferencesResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_preferences_on_scope_account

> <IdentityPreferenceResponse> get_preferences_on_scope_account(account_id, iam_id, service, preference_id, opts)

Get Identity Preference on scope account

Get one Identity Preference on scope `account`. For details about the preferences supported,  refer to the description of operation `Update Identity Preference on scope account`.  ### Authorization  To call this method for the identity type `Trusted Profile`, one of the following conditions must be true:  - the Authorization token represents the trusted profile which is addressed by this request  - you must be assigned one or more IAM access roles that include the following action on the target resource `account` and resource type `preferences`:      - iam-identity.preferences.update      By default, the `Administrator` role on service `iam-identity` contains this action.    - Services inside the IBM Cloud Console can call this method. 

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::IdentityPreferencesApi.new
account_id = 'account_id_example' # String | Account id to get preference for
iam_id = 'iam_id_example' # String | IAM id to get the preference for
service = 'service_example' # String | Service of the preference to be fetched
preference_id = 'preference_id_example' # String | Identifier of preference to be fetched
opts = {
  authorization: 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
}

begin
  # Get Identity Preference on scope account
  result = api_instance.get_preferences_on_scope_account(account_id, iam_id, service, preference_id, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling IdentityPreferencesApi->get_preferences_on_scope_account: #{e}"
end
```

#### Using the get_preferences_on_scope_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IdentityPreferenceResponse>, Integer, Hash)> get_preferences_on_scope_account_with_http_info(account_id, iam_id, service, preference_id, opts)

```ruby
begin
  # Get Identity Preference on scope account
  data, status_code, headers = api_instance.get_preferences_on_scope_account_with_http_info(account_id, iam_id, service, preference_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IdentityPreferenceResponse>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling IdentityPreferencesApi->get_preferences_on_scope_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account id to get preference for |  |
| **iam_id** | **String** | IAM id to get the preference for |  |
| **service** | **String** | Service of the preference to be fetched |  |
| **preference_id** | **String** | Identifier of preference to be fetched |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. | [optional] |

### Return type

[**IdentityPreferenceResponse**](IdentityPreferenceResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_preference_on_scope_account

> <IdentityPreferenceResponse> update_preference_on_scope_account(account_id, iam_id, service, preference_id, update_preference_request, opts)

Update Identity Preference on scope account

Update one Identity Preference on scope `account`.  The following preferences are storing values for identities inside an account,  i.e. for each account that an identity is member of, the value stored might be different. This means, **users** who might be member of multiple accounts can have multiple preferences, one per account.  Identities like **Service Ids** or **Trusted Profiles** can only exist in one account,  therefore they can only have one preference inside their related account.  ### Preferences  - **console/landing_page**    service: `console`    preference_id: `landing_page`    supported identity types: `Trusted Profile`    type: `string`    validation: valid path for the IBM Cloud Console (without host part), e.g. `/billing` or `/iam`  - **console/global_left_navigation**    service: `console`    preference_id: `global_left_navigation`     supported identity types: `Trusted Profile`    type: `list of strings`    validation: each entry in the list of strings must match the identifier of one navigation entry in the console;   these identifiers are defined and interpreted by the IBM Cloud Console; currently the following entries are supported:   `slash,projects,rex,containers,databases,is,logmet,automation,complianceAndSecurity,apis,cp4d,partner-center,sap,satellite,vmWare,watsonx`  ### Authorization  To call this method for the identity type `Trusted Profile`, you must be assigned one or more IAM access roles that include the following action on the target resource `account` and resource type `preferences`:  - iam-identity.preferences.update  By default, the `Administrator` role on service `iam-identity` contains this action. 

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::IdentityPreferencesApi.new
account_id = 'account_id_example' # String | Account id to update preference for
iam_id = 'iam_id_example' # String | IAM id to update the preference for
service = 'service_example' # String | Service of the preference to be updated
preference_id = 'preference_id_example' # String | Identifier of preference to be updated
update_preference_request = IbmCloudIam::UpdatePreferenceRequest.new # UpdatePreferenceRequest | Request to update one identity preference on scope 'acount'.
opts = {
  authorization: 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
}

begin
  # Update Identity Preference on scope account
  result = api_instance.update_preference_on_scope_account(account_id, iam_id, service, preference_id, update_preference_request, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling IdentityPreferencesApi->update_preference_on_scope_account: #{e}"
end
```

#### Using the update_preference_on_scope_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IdentityPreferenceResponse>, Integer, Hash)> update_preference_on_scope_account_with_http_info(account_id, iam_id, service, preference_id, update_preference_request, opts)

```ruby
begin
  # Update Identity Preference on scope account
  data, status_code, headers = api_instance.update_preference_on_scope_account_with_http_info(account_id, iam_id, service, preference_id, update_preference_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IdentityPreferenceResponse>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling IdentityPreferencesApi->update_preference_on_scope_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account id to update preference for |  |
| **iam_id** | **String** | IAM id to update the preference for |  |
| **service** | **String** | Service of the preference to be updated |  |
| **preference_id** | **String** | Identifier of preference to be updated |  |
| **update_preference_request** | [**UpdatePreferenceRequest**](UpdatePreferenceRequest.md) | Request to update one identity preference on scope &#39;acount&#39;. |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. | [optional] |

### Return type

[**IdentityPreferenceResponse**](IdentityPreferenceResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

