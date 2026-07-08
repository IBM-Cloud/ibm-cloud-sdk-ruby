# IbmCloudIam::TokenRetrievalApi

All URIs are relative to *https://iam.cloud.ibm.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_token_api_key**](TokenRetrievalApi.md#get_token_api_key) | **POST** /identity/token#apikey | Create an IAM access token for a user or service ID using an API key |
| [**get_token_api_key_delegated_refresh_token**](TokenRetrievalApi.md#get_token_api_key_delegated_refresh_token) | **POST** /identity/token#apikey-delegated-refresh-token | Create an IAM access token and delegated refresh token for a user or service ID |
| [**get_token_assume**](TokenRetrievalApi.md#get_token_assume) | **POST** /identity/token#assume | Create an IAM access token for a Trusted Profile based on the provided entity. Provided entity can be a identity based token which can be a user token, service id token or a cookie. |
| [**get_token_cr_token**](TokenRetrievalApi.md#get_token_cr_token) | **POST** /identity/token#cr-token | Create an IAM access token for a Trusted Profile based on the provided Compute Resource token |
| [**get_token_iam_authz**](TokenRetrievalApi.md#get_token_iam_authz) | **POST** /identity/token#iam-authz | Create an IAM access token based on an authorization policy |
| [**get_token_password**](TokenRetrievalApi.md#get_token_password) | **POST** /identity/token#password | Create an IAM access token for a user using username / password credentials and an optional account identifier |


## get_token_api_key

> <TokenResponse> get_token_api_key(grant_type, apikey, opts)

Create an IAM access token for a user or service ID using an API key

Creates a non-opaque access token for an API key.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::TokenRetrievalApi.new
grant_type = 'grant_type_example' # String | Grant type for this API call. You must set the grant type to `urn:ibm:params:oauth:grant-type:apikey`.
apikey = 'apikey_example' # String | The value of the api key.
opts = {
  ibm_cloud_tenant: 'ibm_cloud_tenant_example' # String | A comma separated list of enterprise ids and/or account ids. If present, an IAM token for the API key can only be created if the account id or enterprise id of the API key is contained in this header.
}

begin
  # Create an IAM access token for a user or service ID using an API key
  result = api_instance.get_token_api_key(grant_type, apikey, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TokenRetrievalApi->get_token_api_key: #{e}"
end
```

#### Using the get_token_api_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TokenResponse>, Integer, Hash)> get_token_api_key_with_http_info(grant_type, apikey, opts)

```ruby
begin
  # Create an IAM access token for a user or service ID using an API key
  data, status_code, headers = api_instance.get_token_api_key_with_http_info(grant_type, apikey, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TokenResponse>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TokenRetrievalApi->get_token_api_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **grant_type** | **String** | Grant type for this API call. You must set the grant type to &#x60;urn:ibm:params:oauth:grant-type:apikey&#x60;. |  |
| **apikey** | **String** | The value of the api key. |  |
| **ibm_cloud_tenant** | **String** | A comma separated list of enterprise ids and/or account ids. If present, an IAM token for the API key can only be created if the account id or enterprise id of the API key is contained in this header. | [optional] |

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## get_token_api_key_delegated_refresh_token

> <TokenResponse> get_token_api_key_delegated_refresh_token(grant_type, apikey, response_type, receiver_client_ids, opts)

Create an IAM access token and delegated refresh token for a user or service ID

Creates a non-opaque access token and a delegated refresh token for an API key.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::TokenRetrievalApi.new
grant_type = 'grant_type_example' # String | Grant type for this API call. You must set the grant type to `urn:ibm:params:oauth:grant-type:apikey`.
apikey = 'apikey_example' # String | The value of the API key.
response_type = 'response_type_example' # String | Either 'delegated_refresh_token' to receive a delegated refresh token only, or 'cloud_iam delegated_refresh_token' to receive both an IAM access token and a delegated refresh token in one API call.
receiver_client_ids = 'receiver_client_ids_example' # String | A comma separated list of one or more client IDs that will be able to consume the delegated refresh token. The service that accepts a delegated refresh token as API parameter must expose its client ID to allow this API call. The receiver of the delegated refresh token will be able to use the refresh token until it expires.
opts = {
  ibm_cloud_tenant: 'ibm_cloud_tenant_example', # String | A comma separated list of enterprise ids and/or account ids. If present, an IAM token for the API key can only be created if the account id or enterprise id of the API key is contained in this header.
  delegated_refresh_token_expiry: 56 # Integer | Expiration in seconds until the delegated refresh token must be consumed by the receiver client IDs. After the expiration, no client ID can consume the delegated refresh token, even if the life time of the refresh token inside is still not expired. The default, if not specified, is 518,400 seconds which corresponds to 6 days.
}

begin
  # Create an IAM access token and delegated refresh token for a user or service ID
  result = api_instance.get_token_api_key_delegated_refresh_token(grant_type, apikey, response_type, receiver_client_ids, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TokenRetrievalApi->get_token_api_key_delegated_refresh_token: #{e}"
end
```

#### Using the get_token_api_key_delegated_refresh_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TokenResponse>, Integer, Hash)> get_token_api_key_delegated_refresh_token_with_http_info(grant_type, apikey, response_type, receiver_client_ids, opts)

```ruby
begin
  # Create an IAM access token and delegated refresh token for a user or service ID
  data, status_code, headers = api_instance.get_token_api_key_delegated_refresh_token_with_http_info(grant_type, apikey, response_type, receiver_client_ids, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TokenResponse>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TokenRetrievalApi->get_token_api_key_delegated_refresh_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **grant_type** | **String** | Grant type for this API call. You must set the grant type to &#x60;urn:ibm:params:oauth:grant-type:apikey&#x60;. |  |
| **apikey** | **String** | The value of the API key. |  |
| **response_type** | **String** | Either &#39;delegated_refresh_token&#39; to receive a delegated refresh token only, or &#39;cloud_iam delegated_refresh_token&#39; to receive both an IAM access token and a delegated refresh token in one API call. |  |
| **receiver_client_ids** | **String** | A comma separated list of one or more client IDs that will be able to consume the delegated refresh token. The service that accepts a delegated refresh token as API parameter must expose its client ID to allow this API call. The receiver of the delegated refresh token will be able to use the refresh token until it expires. |  |
| **ibm_cloud_tenant** | **String** | A comma separated list of enterprise ids and/or account ids. If present, an IAM token for the API key can only be created if the account id or enterprise id of the API key is contained in this header. | [optional] |
| **delegated_refresh_token_expiry** | **Integer** | Expiration in seconds until the delegated refresh token must be consumed by the receiver client IDs. After the expiration, no client ID can consume the delegated refresh token, even if the life time of the refresh token inside is still not expired. The default, if not specified, is 518,400 seconds which corresponds to 6 days. | [optional] |

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## get_token_assume

> <TokenResponse> get_token_assume(grant_type, opts)

Create an IAM access token for a Trusted Profile based on the provided entity. Provided entity can be a identity based token which can be a user token, service id token or a cookie.

Creates a non-opaque access token for a profile.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::TokenRetrievalApi.new
grant_type = 'grant_type_example' # String | Grant type for this API call. You must set the grant type to `urn:ibm:params:oauth:grant-type:assume`.
opts = {
  access_token: 'access_token_example', # String | Pass one of 'access_token', 'refresh_token' or 'cookie' to get a token for the profile. Provided access_token/refresh_token/iam_cookie need to be generated for the user or service id that has trust relationship with the profile. If the profile being assumed must satisfy an MFA requirement for the account, the access_token/refresh_token (...etc) used to assume the profile must meet the same requirement, using the same level MFA or higher.
  refresh_token: 'refresh_token_example', # String | see 'access_token'
  cookie: 'cookie_example', # String | see 'access_token'
  profile_id: 'profile_id_example', # String | Pass one of 'profile_id', 'profile_crn' or 'profile_name' and 'account' to select which profile should be used for this IAM token. If you pass a 'profile_id' or 'profile_crn', then the profile must exist in the same account. If you pass a 'profile_name' then 'account' need to be passed in the request where the profile is looked up based on the account.
  profile_name: 'profile_name_example', # String | see 'profile_id'
  profile_crn: 'profile_crn_example', # String | see 'profile_id'
  account: 'account_example' # String | ID of the account the profile belongs to
}

begin
  # Create an IAM access token for a Trusted Profile based on the provided entity. Provided entity can be a identity based token which can be a user token, service id token or a cookie.
  result = api_instance.get_token_assume(grant_type, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TokenRetrievalApi->get_token_assume: #{e}"
end
```

#### Using the get_token_assume_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TokenResponse>, Integer, Hash)> get_token_assume_with_http_info(grant_type, opts)

```ruby
begin
  # Create an IAM access token for a Trusted Profile based on the provided entity. Provided entity can be a identity based token which can be a user token, service id token or a cookie.
  data, status_code, headers = api_instance.get_token_assume_with_http_info(grant_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TokenResponse>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TokenRetrievalApi->get_token_assume_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **grant_type** | **String** | Grant type for this API call. You must set the grant type to &#x60;urn:ibm:params:oauth:grant-type:assume&#x60;. |  |
| **access_token** | **String** | Pass one of &#39;access_token&#39;, &#39;refresh_token&#39; or &#39;cookie&#39; to get a token for the profile. Provided access_token/refresh_token/iam_cookie need to be generated for the user or service id that has trust relationship with the profile. If the profile being assumed must satisfy an MFA requirement for the account, the access_token/refresh_token (...etc) used to assume the profile must meet the same requirement, using the same level MFA or higher. | [optional] |
| **refresh_token** | **String** | see &#39;access_token&#39; | [optional] |
| **cookie** | **String** | see &#39;access_token&#39; | [optional] |
| **profile_id** | **String** | Pass one of &#39;profile_id&#39;, &#39;profile_crn&#39; or &#39;profile_name&#39; and &#39;account&#39; to select which profile should be used for this IAM token. If you pass a &#39;profile_id&#39; or &#39;profile_crn&#39;, then the profile must exist in the same account. If you pass a &#39;profile_name&#39; then &#39;account&#39; need to be passed in the request where the profile is looked up based on the account. | [optional] |
| **profile_name** | **String** | see &#39;profile_id&#39; | [optional] |
| **profile_crn** | **String** | see &#39;profile_id&#39; | [optional] |
| **account** | **String** | ID of the account the profile belongs to | [optional] |

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## get_token_cr_token

> <TokenResponse> get_token_cr_token(grant_type, cr_token, opts)

Create an IAM access token for a Trusted Profile based on the provided Compute Resource token

Creates a non-opaque access token without a refresh token for a Trusted Profile

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::TokenRetrievalApi.new
grant_type = 'grant_type_example' # String | Grant type for this API call. You must set the grant type to `urn:ibm:params:oauth:grant-type:cr-token`.
cr_token = 'cr_token_example' # String | The value of the Compute Resource token. As this is a JWT token, the string can get very long.
opts = {
  authorization: 'authorization_example', # String | IBM Services can pass in a Basic Authorization Header representing a client id with a secret. For customers, omit this header parameter. To build a valid Basic Authorization Header, concatenate the client id with a colon and the secret, i.e. `client_id:client_secret`. This sequence must be Base64 encoded, and prefixed with `Basic`, so that a valid Basic Authorization Header would be: `Authorization: Basic Y2xpZW50X2lkOmNsaWVudF9zZWNyZXQ=`
  ibm_cloud_tenant: 'ibm_cloud_tenant_example', # String | A comma separated list of enterprise ids and/or account ids. If present, an IAM token for the Trusted Profile can only be created if the Trusted Profile is part of one of the account ids or enterprise ids provided in this header.
  profile_id: 'profile_id_example', # String | Pass one of 'profile_id', 'profile_name' or 'profile_crn to select which profile should be used for this IAM token. This call can only succeed if you have also linked the Trusted Profile to the Compute Resource, or you have created a Trust Rule from the Trusted Profile to the Compute Resource. If you pass a 'profile_name', then the profile is looked up based on the account_id of the Compute resource. If you pass a 'profile_id' or 'profile_crn', then the profile must exist in the same account like the Compute Resource.
  profile_name: 'profile_name_example', # String | see 'profile_id'
  profile_crn: 'profile_crn_example' # String | see 'profile_id'
}

begin
  # Create an IAM access token for a Trusted Profile based on the provided Compute Resource token
  result = api_instance.get_token_cr_token(grant_type, cr_token, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TokenRetrievalApi->get_token_cr_token: #{e}"
end
```

#### Using the get_token_cr_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TokenResponse>, Integer, Hash)> get_token_cr_token_with_http_info(grant_type, cr_token, opts)

```ruby
begin
  # Create an IAM access token for a Trusted Profile based on the provided Compute Resource token
  data, status_code, headers = api_instance.get_token_cr_token_with_http_info(grant_type, cr_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TokenResponse>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TokenRetrievalApi->get_token_cr_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **grant_type** | **String** | Grant type for this API call. You must set the grant type to &#x60;urn:ibm:params:oauth:grant-type:cr-token&#x60;. |  |
| **cr_token** | **String** | The value of the Compute Resource token. As this is a JWT token, the string can get very long. |  |
| **authorization** | **String** | IBM Services can pass in a Basic Authorization Header representing a client id with a secret. For customers, omit this header parameter. To build a valid Basic Authorization Header, concatenate the client id with a colon and the secret, i.e. &#x60;client_id:client_secret&#x60;. This sequence must be Base64 encoded, and prefixed with &#x60;Basic&#x60;, so that a valid Basic Authorization Header would be: &#x60;Authorization: Basic Y2xpZW50X2lkOmNsaWVudF9zZWNyZXQ&#x3D;&#x60; | [optional] |
| **ibm_cloud_tenant** | **String** | A comma separated list of enterprise ids and/or account ids. If present, an IAM token for the Trusted Profile can only be created if the Trusted Profile is part of one of the account ids or enterprise ids provided in this header. | [optional] |
| **profile_id** | **String** | Pass one of &#39;profile_id&#39;, &#39;profile_name&#39; or &#39;profile_crn to select which profile should be used for this IAM token. This call can only succeed if you have also linked the Trusted Profile to the Compute Resource, or you have created a Trust Rule from the Trusted Profile to the Compute Resource. If you pass a &#39;profile_name&#39;, then the profile is looked up based on the account_id of the Compute resource. If you pass a &#39;profile_id&#39; or &#39;profile_crn&#39;, then the profile must exist in the same account like the Compute Resource. | [optional] |
| **profile_name** | **String** | see &#39;profile_id&#39; | [optional] |
| **profile_crn** | **String** | see &#39;profile_id&#39; | [optional] |

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## get_token_iam_authz

> <TokenResponse> get_token_iam_authz(grant_type, access_token, desired_iam_id)

Create an IAM access token based on an authorization policy

Creates a non-opaque access token, if an appropriate authorization policy is in place. This kind of IAM access token is typically used for access between services.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::TokenRetrievalApi.new
grant_type = 'grant_type_example' # String | Grant type for this API call. You must set the grant type to `urn:ibm:params:oauth:grant-type:iam-authz`.
access_token = 'access_token_example' # String | The IAM access token of the identity that has the appropriate authorization to create an IAM access token for a given resource.
desired_iam_id = 'desired_iam_id_example' # String | The IAM ID of the IAM access token identity that should be created. The desired_iam_id identifies a resource identity. The IAM ID consists of the prefix crn- and the CRN of the target identity, e.g. crn-crn:v1:bluemix:public:cloud-object-storage:global:a/59bcbfa6ea2f006b4ed7094c1a08dcdd:1a0ec336-f391-4091-a6fb-5e084a4c56f4::.

begin
  # Create an IAM access token based on an authorization policy
  result = api_instance.get_token_iam_authz(grant_type, access_token, desired_iam_id)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TokenRetrievalApi->get_token_iam_authz: #{e}"
end
```

#### Using the get_token_iam_authz_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TokenResponse>, Integer, Hash)> get_token_iam_authz_with_http_info(grant_type, access_token, desired_iam_id)

```ruby
begin
  # Create an IAM access token based on an authorization policy
  data, status_code, headers = api_instance.get_token_iam_authz_with_http_info(grant_type, access_token, desired_iam_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TokenResponse>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TokenRetrievalApi->get_token_iam_authz_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **grant_type** | **String** | Grant type for this API call. You must set the grant type to &#x60;urn:ibm:params:oauth:grant-type:iam-authz&#x60;. |  |
| **access_token** | **String** | The IAM access token of the identity that has the appropriate authorization to create an IAM access token for a given resource. |  |
| **desired_iam_id** | **String** | The IAM ID of the IAM access token identity that should be created. The desired_iam_id identifies a resource identity. The IAM ID consists of the prefix crn- and the CRN of the target identity, e.g. crn-crn:v1:bluemix:public:cloud-object-storage:global:a/59bcbfa6ea2f006b4ed7094c1a08dcdd:1a0ec336-f391-4091-a6fb-5e084a4c56f4::. |  |

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## get_token_password

> <TokenResponse> get_token_password(authorization, grant_type, username, password, opts)

Create an IAM access token for a user using username / password credentials and an optional account identifier

Creates a non-opaque access token for a username and password. To be able to call IBM Cloud APIs, the token must be made account-specific. For this purpose, also pass the 32 character long identifier for your account in the API call. This API call is possible only for non-federated IBMid users.

### Examples

```ruby
require 'time'
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::TokenRetrievalApi.new
authorization = 'authorization_example' # String | Basic Authorization Header containing a valid client ID and secret. If this header is omitted the request fails with BXNIM0308E: 'No authorization header found'. You can use the client ID and secret that is used by the IBM Cloud CLI: `bx / bx`
grant_type = 'grant_type_example' # String | Grant type for this API call. You must set the grant type to `password`.
username = 'username_example' # String | The value of the username.
password = 'password_example' # String | The value of the password.
opts = {
  ibm_cloud_tenant: 'ibm_cloud_tenant_example', # String | A comma separated list of enterprise ids and/or account ids. If present, an IAM token for the username / password / account combination can only be created if the account id matches the passed account or the account is member of the enterprise id in this header.
  account: 'account_example' # String | The 32 character identifier of the account. Specify this parameter to get an account-specific IAM token. IBM Cloud APIs require that IAM tokens are account-specific.
}

begin
  # Create an IAM access token for a user using username / password credentials and an optional account identifier
  result = api_instance.get_token_password(authorization, grant_type, username, password, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TokenRetrievalApi->get_token_password: #{e}"
end
```

#### Using the get_token_password_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TokenResponse>, Integer, Hash)> get_token_password_with_http_info(authorization, grant_type, username, password, opts)

```ruby
begin
  # Create an IAM access token for a user using username / password credentials and an optional account identifier
  data, status_code, headers = api_instance.get_token_password_with_http_info(authorization, grant_type, username, password, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TokenResponse>
rescue IbmCloudIam::ApiError => e
  puts "Error when calling TokenRetrievalApi->get_token_password_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorization** | **String** | Basic Authorization Header containing a valid client ID and secret. If this header is omitted the request fails with BXNIM0308E: &#39;No authorization header found&#39;. You can use the client ID and secret that is used by the IBM Cloud CLI: &#x60;bx / bx&#x60; |  |
| **grant_type** | **String** | Grant type for this API call. You must set the grant type to &#x60;password&#x60;. |  |
| **username** | **String** | The value of the username. |  |
| **password** | **String** | The value of the password. |  |
| **ibm_cloud_tenant** | **String** | A comma separated list of enterprise ids and/or account ids. If present, an IAM token for the username / password / account combination can only be created if the account id matches the passed account or the account is member of the enterprise id in this header. | [optional] |
| **account** | **String** | The 32 character identifier of the account. Specify this parameter to get an account-specific IAM token. IBM Cloud APIs require that IAM tokens are account-specific. | [optional] |

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

