# IbmCloudIam::TrustedProfilesApi

All URIs are relative to *https://iam.cloud.ibm.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_rule**](TrustedProfilesApi.md#create_claim_rule) | **POST** /v1/profiles/{profile-id}/rules | Create claim rule for a trusted profile |
| [**create_link**](TrustedProfilesApi.md#create_link) | **POST** /v1/profiles/{profile-id}/links | Create link to a trusted profile |
| [**create_profile**](TrustedProfilesApi.md#create_profile) | **POST** /v1/profiles | Create a trusted profile |
| [**delete_claim_rule**](TrustedProfilesApi.md#delete_claim_rule) | **DELETE** /v1/profiles/{profile-id}/rules/{rule-id} | Delete a claim rule |
| [**delete_link**](TrustedProfilesApi.md#delete_link) | **DELETE** /v1/profiles/{profile-id}/links/{link-id} | Delete link to a trusted profile |
| [**delete_link_by_parameters**](TrustedProfilesApi.md#delete_link_by_parameters) | **DELETE** /v1/profiles/{profile-id}/links | Delete compute resource link to profile by given parameters. |
| [**delete_profile**](TrustedProfilesApi.md#delete_profile) | **DELETE** /v1/profiles/{profile-id} | Delete a trusted profile |
| [**delete_profile_identity**](TrustedProfilesApi.md#delete_profile_identity) | **DELETE** /v1/profiles/{profile-id}/identities/{identity-type}/{identifier-id} | Delete the identity that can assume the trusted profile |
| [**get_claim_rule**](TrustedProfilesApi.md#get_claim_rule) | **GET** /v1/profiles/{profile-id}/rules/{rule-id} | Get a claim rule for a trusted profile |
| [**get_link**](TrustedProfilesApi.md#get_link) | **GET** /v1/profiles/{profile-id}/links/{link-id} | Get link to a trusted profile |
| [**get_profile**](TrustedProfilesApi.md#get_profile) | **GET** /v1/profiles/{profile-id} | Get a trusted profile |
| [**get_profile_identities**](TrustedProfilesApi.md#get_profile_identities) | **GET** /v1/profiles/{profile-id}/identities | Get a list of identities that can assume the trusted profile |
| [**get_profile_identity**](TrustedProfilesApi.md#get_profile_identity) | **GET** /v1/profiles/{profile-id}/identities/{identity-type}/{identifier-id} | Get the identity that can assume the trusted profile |
| [**list_claim_rules**](TrustedProfilesApi.md#list_claim_rules) | **GET** /v1/profiles/{profile-id}/rules | List claim rules for a trusted profile |
| [**list_links**](TrustedProfilesApi.md#list_links) | **GET** /v1/profiles/{profile-id}/links | List links to a trusted profile |
| [**list_profiles**](TrustedProfilesApi.md#list_profiles) | **GET** /v1/profiles | List trusted profiles |
| [**set_profile_identities**](TrustedProfilesApi.md#set_profile_identities) | **PUT** /v1/profiles/{profile-id}/identities | Update the list of identities that can assume the trusted profile |
| [**set_profile_identity**](TrustedProfilesApi.md#set_profile_identity) | **POST** /v1/profiles/{profile-id}/identities/{identity-type} | Add a specific identity that can assume the trusted profile |
| [**update_claim_rule**](TrustedProfilesApi.md#update_claim_rule) | **PUT** /v1/profiles/{profile-id}/rules/{rule-id} | Update claim rule for a trusted profile |
| [**update_profile**](TrustedProfilesApi.md#update_profile) | **PUT** /v1/profiles/{profile-id} | Update a trusted profile |


## create_claim_rule

> <ProfileClaimRule> create_claim_rule(authorization, profile_id, profile_claim_rule_request)

Create claim rule for a trusted profile

Create a claim rule for a trusted profile. There is a limit of 20 rules per trusted profile.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::TrustedProfilesApi.new
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
profile_id = 'profile_id_example' # String | ID of the trusted profile to create a claim rule.
profile_claim_rule_request = IbmCloudIam::ProfileClaimRuleRequest.new({type: 'type_example', conditions: [IbmCloudIam::ProfileClaimRuleConditions.new({claim: 'claim_example', operator: 'operator_example', value: 'value_example'})]}) # ProfileClaimRuleRequest | Request to create a claim rule for trusted profile.

begin
  # Create claim rule for a trusted profile
  result = api_instance.create_claim_rule(authorization, profile_id, profile_claim_rule_request)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfilesApi->create_claim_rule: #{e}"
end
```

#### Using the create_claim_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProfileClaimRule>, Integer, Hash)> create_claim_rule_with_http_info(authorization, profile_id, profile_claim_rule_request)

```ruby
begin
  # Create claim rule for a trusted profile
  data, status_code, headers = api_instance.create_claim_rule_with_http_info(authorization, profile_id, profile_claim_rule_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProfileClaimRule>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfilesApi->create_claim_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |
| **profile_id** | **String** | ID of the trusted profile to create a claim rule. |  |
| **profile_claim_rule_request** | [**ProfileClaimRuleRequest**](ProfileClaimRuleRequest.md) | Request to create a claim rule for trusted profile. |  |

### Return type

[**ProfileClaimRule**](ProfileClaimRule.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_link

> <ProfileLink> create_link(profile_id, authorization, create_profile_link_request)

Create link to a trusted profile

Create a direct link between a specific compute resource and a trusted profile, rather than creating conditions that a compute resource must fulfill to apply a trusted profile.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::TrustedProfilesApi.new
profile_id = 'profile_id_example' # String | ID of the trusted profile.
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
create_profile_link_request = IbmCloudIam::CreateProfileLinkRequest.new({cr_type: 'cr_type_example', link: IbmCloudIam::CreateProfileLinkRequestLink.new({crn: 'crn_example'})}) # CreateProfileLinkRequest | Request to create a Link to Trusted profile.

begin
  # Create link to a trusted profile
  result = api_instance.create_link(profile_id, authorization, create_profile_link_request)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfilesApi->create_link: #{e}"
end
```

#### Using the create_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProfileLink>, Integer, Hash)> create_link_with_http_info(profile_id, authorization, create_profile_link_request)

```ruby
begin
  # Create link to a trusted profile
  data, status_code, headers = api_instance.create_link_with_http_info(profile_id, authorization, create_profile_link_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProfileLink>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfilesApi->create_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | ID of the trusted profile. |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |
| **create_profile_link_request** | [**CreateProfileLinkRequest**](CreateProfileLinkRequest.md) | Request to create a Link to Trusted profile. |  |

### Return type

[**ProfileLink**](ProfileLink.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_profile

> <TrustedProfile> create_profile(authorization, create_trusted_profile_request)

Create a trusted profile

Create a trusted profile for a given account ID.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::TrustedProfilesApi.new
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
create_trusted_profile_request = IbmCloudIam::CreateTrustedProfileRequest.new({name: 'name_example', account_id: 'account_id_example'}) # CreateTrustedProfileRequest | Request to create a trusted profile.

begin
  # Create a trusted profile
  result = api_instance.create_profile(authorization, create_trusted_profile_request)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfilesApi->create_profile: #{e}"
end
```

#### Using the create_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TrustedProfile>, Integer, Hash)> create_profile_with_http_info(authorization, create_trusted_profile_request)

```ruby
begin
  # Create a trusted profile
  data, status_code, headers = api_instance.create_profile_with_http_info(authorization, create_trusted_profile_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TrustedProfile>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfilesApi->create_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |
| **create_trusted_profile_request** | [**CreateTrustedProfileRequest**](CreateTrustedProfileRequest.md) | Request to create a trusted profile. |  |

### Return type

[**TrustedProfile**](TrustedProfile.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_claim_rule

> delete_claim_rule(profile_id, rule_id, authorization)

Delete a claim rule

Delete a claim rule. When you delete a claim rule, federated user or compute resources are no longer required to meet the conditions of the claim rule in order to apply the trusted profile.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::TrustedProfilesApi.new
profile_id = 'profile_id_example' # String | ID of the trusted profile.
rule_id = 'rule_id_example' # String | ID of the claim rule to delete.
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.

begin
  # Delete a claim rule
  api_instance.delete_claim_rule(profile_id, rule_id, authorization)
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfilesApi->delete_claim_rule: #{e}"
end
```

#### Using the delete_claim_rule_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_rule_with_http_info(profile_id, rule_id, authorization)

```ruby
begin
  # Delete a claim rule
  data, status_code, headers = api_instance.delete_claim_rule_with_http_info(profile_id, rule_id, authorization)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfilesApi->delete_claim_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | ID of the trusted profile. |  |
| **rule_id** | **String** | ID of the claim rule to delete. |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_link

> delete_link(profile_id, link_id, authorization)

Delete link to a trusted profile

Delete a link between a compute resource and a trusted profile.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::TrustedProfilesApi.new
profile_id = 'profile_id_example' # String | ID of the trusted profile
link_id = 'link_id_example' # String | ID of the link
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.

begin
  # Delete link to a trusted profile
  api_instance.delete_link(profile_id, link_id, authorization)
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfilesApi->delete_link: #{e}"
end
```

#### Using the delete_link_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_link_with_http_info(profile_id, link_id, authorization)

```ruby
begin
  # Delete link to a trusted profile
  data, status_code, headers = api_instance.delete_link_with_http_info(profile_id, link_id, authorization)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfilesApi->delete_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | ID of the trusted profile |  |
| **link_id** | **String** | ID of the link |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_link_by_parameters

> delete_link_by_parameters(profile_id, type, authorization, opts)

Delete compute resource link to profile by given parameters.

Deletes compute resource link of a Trusted Profile matching the given parameters.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::TrustedProfilesApi.new
profile_id = 'profile_id_example' # String | The unique ID of the Trusted Profile
type = 'type_example' # String | The compute resource type. Valid values are VSI, PVS, BMS, IKS_SA, ROKS_SA, CE
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
opts = {
  crn: 'crn_example', # String | CRN of the compute resource (VSI/PVS/BMS/IKS/ROKS/CE)
  namespace: 'namespace_example', # String | Namespace of the compute resource (IKS/ROKS).
  name: 'name_example', # String | Name of the compute resource (IKS/ROKS).
  component_type: 'component_type_example', # String | Component type of the compute resource, only required if type is CE
  component_name: 'component_name_example' # String | Component name of the compute resource, only required if type is CE
}

begin
  # Delete compute resource link to profile by given parameters.
  api_instance.delete_link_by_parameters(profile_id, type, authorization, opts)
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfilesApi->delete_link_by_parameters: #{e}"
end
```

#### Using the delete_link_by_parameters_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_link_by_parameters_with_http_info(profile_id, type, authorization, opts)

```ruby
begin
  # Delete compute resource link to profile by given parameters.
  data, status_code, headers = api_instance.delete_link_by_parameters_with_http_info(profile_id, type, authorization, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfilesApi->delete_link_by_parameters_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | The unique ID of the Trusted Profile |  |
| **type** | **String** | The compute resource type. Valid values are VSI, PVS, BMS, IKS_SA, ROKS_SA, CE |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |
| **crn** | **String** | CRN of the compute resource (VSI/PVS/BMS/IKS/ROKS/CE) | [optional] |
| **namespace** | **String** | Namespace of the compute resource (IKS/ROKS). | [optional] |
| **name** | **String** | Name of the compute resource (IKS/ROKS). | [optional] |
| **component_type** | **String** | Component type of the compute resource, only required if type is CE | [optional] |
| **component_name** | **String** | Component name of the compute resource, only required if type is CE | [optional] |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_profile

> delete_profile(profile_id, authorization)

Delete a trusted profile

Delete a trusted profile. When you delete trusted profile, compute resources and federated users are unlinked from the profile and can no longer apply the trusted profile identity.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::TrustedProfilesApi.new
profile_id = 'profile_id_example' # String | ID of the trusted profile.
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.

begin
  # Delete a trusted profile
  api_instance.delete_profile(profile_id, authorization)
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfilesApi->delete_profile: #{e}"
end
```

#### Using the delete_profile_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_profile_with_http_info(profile_id, authorization)

```ruby
begin
  # Delete a trusted profile
  data, status_code, headers = api_instance.delete_profile_with_http_info(profile_id, authorization)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfilesApi->delete_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | ID of the trusted profile. |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_profile_identity

> delete_profile_identity(profile_id, identity_type, identifier_id, authorization)

Delete the identity that can assume the trusted profile

Delete the identity that can assume the trusted profile.   **Note:** This API will update the trusted profile itself,  thus calling it repeatedly for the same profile can lead to  conflicts responded with HTTP code 409. Make sure to call this  API only once in a few seconds for the same trusted profile. 

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::TrustedProfilesApi.new
profile_id = 'profile_id_example' # String | ID of the trusted profile
identity_type = 'user' # String | Type of the identity
identifier_id = 'identifier_id_example' # String | Identifier of the identity that can assume the trusted profiles.
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.

begin
  # Delete the identity that can assume the trusted profile
  api_instance.delete_profile_identity(profile_id, identity_type, identifier_id, authorization)
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfilesApi->delete_profile_identity: #{e}"
end
```

#### Using the delete_profile_identity_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_profile_identity_with_http_info(profile_id, identity_type, identifier_id, authorization)

```ruby
begin
  # Delete the identity that can assume the trusted profile
  data, status_code, headers = api_instance.delete_profile_identity_with_http_info(profile_id, identity_type, identifier_id, authorization)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfilesApi->delete_profile_identity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | ID of the trusted profile |  |
| **identity_type** | **String** | Type of the identity |  |
| **identifier_id** | **String** | Identifier of the identity that can assume the trusted profiles. |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_rule

> <ProfileClaimRule> get_claim_rule(profile_id, rule_id, authorization)

Get a claim rule for a trusted profile

A specific claim rule can be fetched for a given trusted profile ID and rule ID.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::TrustedProfilesApi.new
profile_id = 'profile_id_example' # String | ID of the trusted profile.
rule_id = 'rule_id_example' # String | ID of the claim rule to get.
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.

begin
  # Get a claim rule for a trusted profile
  result = api_instance.get_claim_rule(profile_id, rule_id, authorization)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfilesApi->get_claim_rule: #{e}"
end
```

#### Using the get_claim_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProfileClaimRule>, Integer, Hash)> get_claim_rule_with_http_info(profile_id, rule_id, authorization)

```ruby
begin
  # Get a claim rule for a trusted profile
  data, status_code, headers = api_instance.get_claim_rule_with_http_info(profile_id, rule_id, authorization)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProfileClaimRule>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfilesApi->get_claim_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | ID of the trusted profile. |  |
| **rule_id** | **String** | ID of the claim rule to get. |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |

### Return type

[**ProfileClaimRule**](ProfileClaimRule.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_link

> <ProfileLink> get_link(profile_id, link_id, authorization)

Get link to a trusted profile

Get a specific link to a trusted profile by `link_id`.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::TrustedProfilesApi.new
profile_id = 'profile_id_example' # String | ID of the trusted profile
link_id = 'link_id_example' # String | ID of the link
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.

begin
  # Get link to a trusted profile
  result = api_instance.get_link(profile_id, link_id, authorization)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfilesApi->get_link: #{e}"
end
```

#### Using the get_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProfileLink>, Integer, Hash)> get_link_with_http_info(profile_id, link_id, authorization)

```ruby
begin
  # Get link to a trusted profile
  data, status_code, headers = api_instance.get_link_with_http_info(profile_id, link_id, authorization)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProfileLink>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfilesApi->get_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | ID of the trusted profile |  |
| **link_id** | **String** | ID of the link |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |

### Return type

[**ProfileLink**](ProfileLink.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_profile

> <TrustedProfile> get_profile(profile_id, authorization, opts)

Get a trusted profile

Retrieve a trusted profile by its `profile-id`. Only the trusted profile's data is returned (`name`, `description`, `iam_id`, etc.), not the federated users or compute resources that qualify to apply the trusted profile.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::TrustedProfilesApi.new
profile_id = 'profile_id_example' # String | ID of the trusted profile to get.
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
opts = {
  include_activity: true # Boolean | Defines if the entity's activity is included in the response. Retrieving activity data is an expensive operation, so only request this when needed.
}

begin
  # Get a trusted profile
  result = api_instance.get_profile(profile_id, authorization, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfilesApi->get_profile: #{e}"
end
```

#### Using the get_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TrustedProfile>, Integer, Hash)> get_profile_with_http_info(profile_id, authorization, opts)

```ruby
begin
  # Get a trusted profile
  data, status_code, headers = api_instance.get_profile_with_http_info(profile_id, authorization, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TrustedProfile>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfilesApi->get_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | ID of the trusted profile to get. |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |
| **include_activity** | **Boolean** | Defines if the entity&#39;s activity is included in the response. Retrieving activity data is an expensive operation, so only request this when needed. | [optional][default to false] |

### Return type

[**TrustedProfile**](TrustedProfile.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_profile_identities

> <ProfileIdentitiesResponse> get_profile_identities(profile_id, authorization)

Get a list of identities that can assume the trusted profile

Get a list of identities that can assume the trusted profile

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::TrustedProfilesApi.new
profile_id = 'profile_id_example' # String | ID of the trusted profile.
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.

begin
  # Get a list of identities that can assume the trusted profile
  result = api_instance.get_profile_identities(profile_id, authorization)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfilesApi->get_profile_identities: #{e}"
end
```

#### Using the get_profile_identities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProfileIdentitiesResponse>, Integer, Hash)> get_profile_identities_with_http_info(profile_id, authorization)

```ruby
begin
  # Get a list of identities that can assume the trusted profile
  data, status_code, headers = api_instance.get_profile_identities_with_http_info(profile_id, authorization)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProfileIdentitiesResponse>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfilesApi->get_profile_identities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | ID of the trusted profile. |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |

### Return type

[**ProfileIdentitiesResponse**](ProfileIdentitiesResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_profile_identity

> <ProfileIdentityResponse> get_profile_identity(profile_id, identity_type, identifier_id, authorization)

Get the identity that can assume the trusted profile

Get the identity that can assume the trusted profile

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::TrustedProfilesApi.new
profile_id = 'profile_id_example' # String | ID of the trusted profile
identity_type = 'user' # String | Type of the identity
identifier_id = 'identifier_id_example' # String | Identifier of the identity that can assume the trusted profiles.
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.

begin
  # Get the identity that can assume the trusted profile
  result = api_instance.get_profile_identity(profile_id, identity_type, identifier_id, authorization)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfilesApi->get_profile_identity: #{e}"
end
```

#### Using the get_profile_identity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProfileIdentityResponse>, Integer, Hash)> get_profile_identity_with_http_info(profile_id, identity_type, identifier_id, authorization)

```ruby
begin
  # Get the identity that can assume the trusted profile
  data, status_code, headers = api_instance.get_profile_identity_with_http_info(profile_id, identity_type, identifier_id, authorization)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProfileIdentityResponse>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfilesApi->get_profile_identity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | ID of the trusted profile |  |
| **identity_type** | **String** | Type of the identity |  |
| **identifier_id** | **String** | Identifier of the identity that can assume the trusted profiles. |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |

### Return type

[**ProfileIdentityResponse**](ProfileIdentityResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_claim_rules

> <ProfileClaimRuleList> list_claim_rules(profile_id, authorization)

List claim rules for a trusted profile

Get a list of all claim rules for a trusted profile. The `profile-id` query parameter determines the profile from which to retrieve the list of claim rules.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::TrustedProfilesApi.new
profile_id = 'profile_id_example' # String | ID of the trusted profile.
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.

begin
  # List claim rules for a trusted profile
  result = api_instance.list_claim_rules(profile_id, authorization)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfilesApi->list_claim_rules: #{e}"
end
```

#### Using the list_claim_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProfileClaimRuleList>, Integer, Hash)> list_claim_rules_with_http_info(profile_id, authorization)

```ruby
begin
  # List claim rules for a trusted profile
  data, status_code, headers = api_instance.list_claim_rules_with_http_info(profile_id, authorization)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProfileClaimRuleList>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfilesApi->list_claim_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | ID of the trusted profile. |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |

### Return type

[**ProfileClaimRuleList**](ProfileClaimRuleList.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_links

> <ProfileLinkList> list_links(profile_id, authorization)

List links to a trusted profile

Get a list of links to a trusted profile.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::TrustedProfilesApi.new
profile_id = 'profile_id_example' # String | ID of the trusted profile
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.

begin
  # List links to a trusted profile
  result = api_instance.list_links(profile_id, authorization)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfilesApi->list_links: #{e}"
end
```

#### Using the list_links_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProfileLinkList>, Integer, Hash)> list_links_with_http_info(profile_id, authorization)

```ruby
begin
  # List links to a trusted profile
  data, status_code, headers = api_instance.list_links_with_http_info(profile_id, authorization)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProfileLinkList>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfilesApi->list_links_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | ID of the trusted profile |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |

### Return type

[**ProfileLinkList**](ProfileLinkList.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_profiles

> <TrustedProfilesList> list_profiles(account_id, authorization, opts)

List trusted profiles

List the trusted profiles in an account. The `account_id` query parameter determines the account from which to retrieve the list of trusted profiles.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::TrustedProfilesApi.new
account_id = 'account_id_example' # String | Account ID to query for trusted profiles.
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
opts = {
  name: 'name_example', # String | Name of the trusted profile to query.
  pagesize: 56, # Integer | Optional size of a single page. Default is 20 items per page. Valid range is 1 to 100.
  sort: 'sort_example', # String | Optional sort property, valid values are name, description, created_at and modified_at. If specified, the items are sorted by the value of this property.
  order: 'asc', # String | Optional sort order, valid values are asc and desc. Default: asc.
  include_history: true, # Boolean | Defines if the entity history is included in the response.
  pagetoken: 'pagetoken_example', # String | Optional Prev or Next page token returned from a previous query execution. Default is start with first page.
  filter: 'filter_example' # String | An optional filter query parameter used to refine the results of the search operation. For more information see [Filtering list results](#filter-list-results) section.
}

begin
  # List trusted profiles
  result = api_instance.list_profiles(account_id, authorization, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfilesApi->list_profiles: #{e}"
end
```

#### Using the list_profiles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TrustedProfilesList>, Integer, Hash)> list_profiles_with_http_info(account_id, authorization, opts)

```ruby
begin
  # List trusted profiles
  data, status_code, headers = api_instance.list_profiles_with_http_info(account_id, authorization, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TrustedProfilesList>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfilesApi->list_profiles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID to query for trusted profiles. |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |
| **name** | **String** | Name of the trusted profile to query. | [optional] |
| **pagesize** | **Integer** | Optional size of a single page. Default is 20 items per page. Valid range is 1 to 100. | [optional] |
| **sort** | **String** | Optional sort property, valid values are name, description, created_at and modified_at. If specified, the items are sorted by the value of this property. | [optional] |
| **order** | **String** | Optional sort order, valid values are asc and desc. Default: asc. | [optional][default to &#39;asc&#39;] |
| **include_history** | **Boolean** | Defines if the entity history is included in the response. | [optional][default to false] |
| **pagetoken** | **String** | Optional Prev or Next page token returned from a previous query execution. Default is start with first page. | [optional] |
| **filter** | **String** | An optional filter query parameter used to refine the results of the search operation. For more information see [Filtering list results](#filter-list-results) section. | [optional] |

### Return type

[**TrustedProfilesList**](TrustedProfilesList.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## set_profile_identities

> <ProfileIdentitiesResponse> set_profile_identities(profile_id, if_match, authorization, profile_identities_update_request)

Update the list of identities that can assume the trusted profile

Update the list of identities that can assume the trusted profile

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::TrustedProfilesApi.new
profile_id = 'profile_id_example' # String | ID of the trusted profile.
if_match = 'if_match_example' # String | Entity tag of the Identities to be updated. Specify the tag that you retrieved when reading the Profile Identities. This value helps identify parallel usage of this API. Pass * to indicate updating any available version, which may result in stale updates.
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
profile_identities_update_request = IbmCloudIam::ProfileIdentitiesUpdateRequest.new # ProfileIdentitiesUpdateRequest | Request to update identities.

begin
  # Update the list of identities that can assume the trusted profile
  result = api_instance.set_profile_identities(profile_id, if_match, authorization, profile_identities_update_request)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfilesApi->set_profile_identities: #{e}"
end
```

#### Using the set_profile_identities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProfileIdentitiesResponse>, Integer, Hash)> set_profile_identities_with_http_info(profile_id, if_match, authorization, profile_identities_update_request)

```ruby
begin
  # Update the list of identities that can assume the trusted profile
  data, status_code, headers = api_instance.set_profile_identities_with_http_info(profile_id, if_match, authorization, profile_identities_update_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProfileIdentitiesResponse>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfilesApi->set_profile_identities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | ID of the trusted profile. |  |
| **if_match** | **String** | Entity tag of the Identities to be updated. Specify the tag that you retrieved when reading the Profile Identities. This value helps identify parallel usage of this API. Pass * to indicate updating any available version, which may result in stale updates. |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |
| **profile_identities_update_request** | [**ProfileIdentitiesUpdateRequest**](ProfileIdentitiesUpdateRequest.md) | Request to update identities. |  |

### Return type

[**ProfileIdentitiesResponse**](ProfileIdentitiesResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_profile_identity

> <ProfileIdentityResponse> set_profile_identity(profile_id, identity_type, authorization, profile_identity_request)

Add a specific identity that can assume the trusted profile

Add a specific identity that can assume the trusted profile.   **Note:** This API will update the trusted profile itself,  thus calling it repeatedly for the same profile can lead to  conflicts responded with HTTP code 409. Make sure to call this  API only once in a few seconds for the same trusted profile. 

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::TrustedProfilesApi.new
profile_id = 'profile_id_example' # String | ID of the trusted profile
identity_type = 'user' # String | Type of the identity
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
profile_identity_request = IbmCloudIam::ProfileIdentityRequest.new({identifier: 'identifier_example', type: 'user'}) # ProfileIdentityRequest | Request to update identities.

begin
  # Add a specific identity that can assume the trusted profile
  result = api_instance.set_profile_identity(profile_id, identity_type, authorization, profile_identity_request)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfilesApi->set_profile_identity: #{e}"
end
```

#### Using the set_profile_identity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProfileIdentityResponse>, Integer, Hash)> set_profile_identity_with_http_info(profile_id, identity_type, authorization, profile_identity_request)

```ruby
begin
  # Add a specific identity that can assume the trusted profile
  data, status_code, headers = api_instance.set_profile_identity_with_http_info(profile_id, identity_type, authorization, profile_identity_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProfileIdentityResponse>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfilesApi->set_profile_identity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | ID of the trusted profile |  |
| **identity_type** | **String** | Type of the identity |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |
| **profile_identity_request** | [**ProfileIdentityRequest**](ProfileIdentityRequest.md) | Request to update identities. |  |

### Return type

[**ProfileIdentityResponse**](ProfileIdentityResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_claim_rule

> <ProfileClaimRule> update_claim_rule(profile_id, rule_id, authorization, if_match, profile_claim_rule_request)

Update claim rule for a trusted profile

Update a specific claim rule for a given trusted profile ID and rule ID.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::TrustedProfilesApi.new
profile_id = 'profile_id_example' # String | ID of the trusted profile.
rule_id = 'rule_id_example' # String | ID of the claim rule to update.
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
if_match = 'if_match_example' # String | Version of the claim rule to be updated. Specify the version that you retrived when reading list of claim rules. This value helps to identify any parallel usage of claim rule. Pass * to indicate to update any version available. This might result in stale updates. 
profile_claim_rule_request = IbmCloudIam::ProfileClaimRuleRequest.new({type: 'type_example', conditions: [IbmCloudIam::ProfileClaimRuleConditions.new({claim: 'claim_example', operator: 'operator_example', value: 'value_example'})]}) # ProfileClaimRuleRequest | Request to update a claim rule.

begin
  # Update claim rule for a trusted profile
  result = api_instance.update_claim_rule(profile_id, rule_id, authorization, if_match, profile_claim_rule_request)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfilesApi->update_claim_rule: #{e}"
end
```

#### Using the update_claim_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProfileClaimRule>, Integer, Hash)> update_claim_rule_with_http_info(profile_id, rule_id, authorization, if_match, profile_claim_rule_request)

```ruby
begin
  # Update claim rule for a trusted profile
  data, status_code, headers = api_instance.update_claim_rule_with_http_info(profile_id, rule_id, authorization, if_match, profile_claim_rule_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProfileClaimRule>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfilesApi->update_claim_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | ID of the trusted profile. |  |
| **rule_id** | **String** | ID of the claim rule to update. |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |
| **if_match** | **String** | Version of the claim rule to be updated. Specify the version that you retrived when reading list of claim rules. This value helps to identify any parallel usage of claim rule. Pass * to indicate to update any version available. This might result in stale updates.  |  |
| **profile_claim_rule_request** | [**ProfileClaimRuleRequest**](ProfileClaimRuleRequest.md) | Request to update a claim rule. |  |

### Return type

[**ProfileClaimRule**](ProfileClaimRule.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_profile

> <TrustedProfile> update_profile(profile_id, authorization, if_match, update_trusted_profile_request)

Update a trusted profile

Update the name or description of an existing trusted profile.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::TrustedProfilesApi.new
profile_id = 'profile_id_example' # String | ID of the trusted profile to be updated.
authorization = 'authorization_example' # String | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: 'No authorization header found'. Make sure that the provided token has the required authority for the request.
if_match = 'if_match_example' # String | Version of the trusted profile to be updated. Specify the version that you retrived when reading list of trusted profiles. This value helps to identify any parallel usage of trusted profile. Pass * to indicate to update any version available. This might result in stale updates. 
update_trusted_profile_request = IbmCloudIam::UpdateTrustedProfileRequest.new # UpdateTrustedProfileRequest | Request to update a trusted profile.

begin
  # Update a trusted profile
  result = api_instance.update_profile(profile_id, authorization, if_match, update_trusted_profile_request)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfilesApi->update_profile: #{e}"
end
```

#### Using the update_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TrustedProfile>, Integer, Hash)> update_profile_with_http_info(profile_id, authorization, if_match, update_trusted_profile_request)

```ruby
begin
  # Update a trusted profile
  data, status_code, headers = api_instance.update_profile_with_http_info(profile_id, authorization, if_match, update_trusted_profile_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TrustedProfile>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TrustedProfilesApi->update_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | ID of the trusted profile to be updated. |  |
| **authorization** | **String** | Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Make sure that the provided token has the required authority for the request. |  |
| **if_match** | **String** | Version of the trusted profile to be updated. Specify the version that you retrived when reading list of trusted profiles. This value helps to identify any parallel usage of trusted profile. Pass * to indicate to update any version available. This might result in stale updates.  |  |
| **update_trusted_profile_request** | [**UpdateTrustedProfileRequest**](UpdateTrustedProfileRequest.md) | Request to update a trusted profile. |  |

### Return type

[**TrustedProfile**](TrustedProfile.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

