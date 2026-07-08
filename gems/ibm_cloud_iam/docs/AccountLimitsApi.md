# IbmCloudIam::AccountLimitsApi

All URIs are relative to *https://iam.cloud.ibm.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**bulk_list_account_entity_consumption**](AccountLimitsApi.md#bulk_list_account_entity_consumption) | **POST** /v1/accounts/{account_id}/limits/identity | Get account entity limits via POST request |
| [**get_account_limits**](AccountLimitsApi.md#get_account_limits) | **GET** /v1/accounts/{account_id}/limits/identity | Get account entity limits |


## bulk_list_account_entity_consumption

> <IdentityLimitsUsageResponse> bulk_list_account_entity_consumption(account_id, authorization, opts)

Get account entity limits via POST request

Returns the details of an account's entity limits using a body for larger list of parameters for consumption details. 

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::AccountLimitsApi.new
account_id = 'account_id_example' # String | Unique ID of the account.
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Please make sure that the provided token has the required authority for the request.
opts = {
  identity_limits_usage_request: IbmCloudIam::IdentityLimitsUsageRequest.new # IdentityLimitsUsageRequest | 
}

begin
  # Get account entity limits via POST request
  result = api_instance.bulk_list_account_entity_consumption(account_id, authorization, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountLimitsApi->bulk_list_account_entity_consumption: #{e}"
end
```

#### Using the bulk_list_account_entity_consumption_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IdentityLimitsUsageResponse>, Integer, Hash)> bulk_list_account_entity_consumption_with_http_info(account_id, authorization, opts)

```ruby
begin
  # Get account entity limits via POST request
  data, status_code, headers = api_instance.bulk_list_account_entity_consumption_with_http_info(account_id, authorization, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IdentityLimitsUsageResponse>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountLimitsApi->bulk_list_account_entity_consumption_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Unique ID of the account. |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request. |  |
| **identity_limits_usage_request** | [**IdentityLimitsUsageRequest**](IdentityLimitsUsageRequest.md) |  | [optional] |

### Return type

[**IdentityLimitsUsageResponse**](IdentityLimitsUsageResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_account_limits

> <IdentityLimitsUsageResponse> get_account_limits(account_id, authorization, opts)

Get account entity limits

Returns the details of an account's entity limits with query parameters for consumption details.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::AccountLimitsApi.new
account_id = 'account_id_example' # String | Unique ID of the account.
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Please make sure that the provided token has the required authority for the request.
opts = {
  serviceid_groups: true, # Boolean | Boolean to include serviceid group consumption.
  serviceids_per_group: 'serviceids_per_group_example', # String | Comma seperated list of ServiceID groups to include for consumption.
  profiles: 'profiles_example', # String | Boolean to include trusted profiles consumption.
  apikeys_per_identity: 'apikeys_per_identity_example', # String | Comma seperated list of IAM IDs to include for API key consumption.
  templates: 'templates_example', # String | Boolean to include template consumption.
  template_versions_per_template: 'template_versions_per_template_example', # String | Comma seperated list of template IDs to include for template version consumption.
  idps: 'idps_example', # String | Boolean to include identity provider consumption.
  claim_rules_per_group: 'claim_rules_per_group_example', # String | Comma seperated list of access groups to include for claim rules consumption.
  claim_rules_per_profile: 'claim_rules_per_profile_example', # String | Comma seperated list of profiles to include for claim rules consumption.
  cr_links: 'cr_links_example', # String | Boolean to include compute resource links consumption.
  cr_links_per_profile: 'cr_links_per_profile_example', # String | Comma seperated list of profile IDs to include for cr links consumption.
  cr_rules: 'cr_rules_example', # String | Boolean to include compute resource rules consumption.
  cr_rules_per_profile: 'cr_rules_per_profile_example' # String | Comma seperated list of profile IDs to include for cr rules consumption.
}

begin
  # Get account entity limits
  result = api_instance.get_account_limits(account_id, authorization, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountLimitsApi->get_account_limits: #{e}"
end
```

#### Using the get_account_limits_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IdentityLimitsUsageResponse>, Integer, Hash)> get_account_limits_with_http_info(account_id, authorization, opts)

```ruby
begin
  # Get account entity limits
  data, status_code, headers = api_instance.get_account_limits_with_http_info(account_id, authorization, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IdentityLimitsUsageResponse>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling AccountLimitsApi->get_account_limits_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Unique ID of the account. |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request. |  |
| **serviceid_groups** | **Boolean** | Boolean to include serviceid group consumption. | [optional] |
| **serviceids_per_group** | **String** | Comma seperated list of ServiceID groups to include for consumption. | [optional] |
| **profiles** | **String** | Boolean to include trusted profiles consumption. | [optional] |
| **apikeys_per_identity** | **String** | Comma seperated list of IAM IDs to include for API key consumption. | [optional] |
| **templates** | **String** | Boolean to include template consumption. | [optional] |
| **template_versions_per_template** | **String** | Comma seperated list of template IDs to include for template version consumption. | [optional] |
| **idps** | **String** | Boolean to include identity provider consumption. | [optional] |
| **claim_rules_per_group** | **String** | Comma seperated list of access groups to include for claim rules consumption. | [optional] |
| **claim_rules_per_profile** | **String** | Comma seperated list of profiles to include for claim rules consumption. | [optional] |
| **cr_links** | **String** | Boolean to include compute resource links consumption. | [optional] |
| **cr_links_per_profile** | **String** | Comma seperated list of profile IDs to include for cr links consumption. | [optional] |
| **cr_rules** | **String** | Boolean to include compute resource rules consumption. | [optional] |
| **cr_rules_per_profile** | **String** | Comma seperated list of profile IDs to include for cr rules consumption. | [optional] |

### Return type

[**IdentityLimitsUsageResponse**](IdentityLimitsUsageResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

