# IbmCloudIam::TokenOperationsApi

All URIs are relative to *https://iam.cloud.ibm.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_token_api_key**](TokenOperationsApi.md#get_token_api_key) | **POST** /identity/token#apikey | Create an IAM access token for a user or service ID using an API key
[**get_token_api_key_delegated_refresh_token**](TokenOperationsApi.md#get_token_api_key_delegated_refresh_token) | **POST** /identity/token#apikey-delegated-refresh-token | Create an IAM access token and delegated refresh token for a user or service ID
[**get_token_iam_authz**](TokenOperationsApi.md#get_token_iam_authz) | **POST** /identity/token#iam-authz | Create an IAM access token based on an authorization policy
[**get_token_password**](TokenOperationsApi.md#get_token_password) | **POST** /identity/token#password | Create an IAM access token for a user using username / password credentials and an optional account identifier.



## get_token_api_key

> TokenResponse get_token_api_key(grant_type, apikey)

Create an IAM access token for a user or service ID using an API key

Creates a non-opaque access token for an API key.

### Example

```ruby
# load the gem
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::TokenOperationsApi.new
grant_type = 'grant_type_example' # String | Grant type for this API call. You must set the grant type to `urn:ibm:params:oauth:grant-type:apikey`.
apikey = 'apikey_example' # String | The value of the api key

begin
  #Create an IAM access token for a user or service ID using an API key
  result = api_instance.get_token_api_key(grant_type, apikey)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Exception when calling TokenOperationsApi->get_token_api_key: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grant_type** | **String**| Grant type for this API call. You must set the grant type to &#x60;urn:ibm:params:oauth:grant-type:apikey&#x60;. | 
 **apikey** | **String**| The value of the api key | 

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## get_token_api_key_delegated_refresh_token

> TokenResponse get_token_api_key_delegated_refresh_token(grant_type, apikey, response_type, receiver_client_ids, opts)

Create an IAM access token and delegated refresh token for a user or service ID

Creates a non-opaque access token and a delegated refresh token for an API key.

### Example

```ruby
# load the gem
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::TokenOperationsApi.new
grant_type = 'grant_type_example' # String | Grant type for this API call. You must set the grant type to `urn:ibm:params:oauth:grant-type:apikey`.
apikey = 'apikey_example' # String | The value of the API key.
response_type = 'response_type_example' # String | Either 'delegated_refresh_token' to receive a delegated refresh token only, or 'cloud_iam delegated_refresh_token' to receive both an IAM access token and a delegated refresh token in one API call.
receiver_client_ids = 'receiver_client_ids_example' # String | A comma separated list of one or more client IDs that will be able to consume the delegated refresh token. The service that accepts a delegated refresh token as API parameter must expose its client ID to allow this API call. The receiver of the delegated refresh token will be able to use the refresh token until it expires.
opts = {
  delegated_refresh_token_expiry: 56 # Integer | Expiration in seconds until the delegated refresh token must be consumed by the receiver client IDs. After the expiration, no client ID can consume the delegated refresh token, even if the life time of the refresh token inside is still not expired. The default, if not specified, is 518,400 seconds which corresponds to 6 days.
}

begin
  #Create an IAM access token and delegated refresh token for a user or service ID
  result = api_instance.get_token_api_key_delegated_refresh_token(grant_type, apikey, response_type, receiver_client_ids, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Exception when calling TokenOperationsApi->get_token_api_key_delegated_refresh_token: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grant_type** | **String**| Grant type for this API call. You must set the grant type to &#x60;urn:ibm:params:oauth:grant-type:apikey&#x60;. | 
 **apikey** | **String**| The value of the API key. | 
 **response_type** | **String**| Either &#39;delegated_refresh_token&#39; to receive a delegated refresh token only, or &#39;cloud_iam delegated_refresh_token&#39; to receive both an IAM access token and a delegated refresh token in one API call. | 
 **receiver_client_ids** | **String**| A comma separated list of one or more client IDs that will be able to consume the delegated refresh token. The service that accepts a delegated refresh token as API parameter must expose its client ID to allow this API call. The receiver of the delegated refresh token will be able to use the refresh token until it expires. | 
 **delegated_refresh_token_expiry** | **Integer**| Expiration in seconds until the delegated refresh token must be consumed by the receiver client IDs. After the expiration, no client ID can consume the delegated refresh token, even if the life time of the refresh token inside is still not expired. The default, if not specified, is 518,400 seconds which corresponds to 6 days. | [optional] 

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## get_token_iam_authz

> TokenResponse get_token_iam_authz(grant_type, access_token, desired_iam_id)

Create an IAM access token based on an authorization policy

Creates a non-opaque access token, if an appropriate authorization policy is in place. This kind of IAM access token is typically used for access between services.

### Example

```ruby
# load the gem
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::TokenOperationsApi.new
grant_type = 'grant_type_example' # String | Grant type for this API call. You must set the grant type to `urn:ibm:params:oauth:grant-type:iam-authz`.
access_token = 'access_token_example' # String | The IAM access token of the identity that has the appropriate authorization to create an IAM access token for a given resource.
desired_iam_id = 'desired_iam_id_example' # String | The IAM ID of the IAM access token identity that should be created. The desired_iam_id identifies a resource identity. The IAM ID consists of the prefix crn- and the CRN of the target identity, e.g. crn-crn:v1:bluemix:public:cloud-object-storage:global:a/59bcbfa6ea2f006b4ed7094c1a08dcdd:1a0ec336-f391-4091-a6fb-5e084a4c56f4::.

begin
  #Create an IAM access token based on an authorization policy
  result = api_instance.get_token_iam_authz(grant_type, access_token, desired_iam_id)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Exception when calling TokenOperationsApi->get_token_iam_authz: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grant_type** | **String**| Grant type for this API call. You must set the grant type to &#x60;urn:ibm:params:oauth:grant-type:iam-authz&#x60;. | 
 **access_token** | **String**| The IAM access token of the identity that has the appropriate authorization to create an IAM access token for a given resource. | 
 **desired_iam_id** | **String**| The IAM ID of the IAM access token identity that should be created. The desired_iam_id identifies a resource identity. The IAM ID consists of the prefix crn- and the CRN of the target identity, e.g. crn-crn:v1:bluemix:public:cloud-object-storage:global:a/59bcbfa6ea2f006b4ed7094c1a08dcdd:1a0ec336-f391-4091-a6fb-5e084a4c56f4::. | 

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## get_token_password

> TokenResponse get_token_password(authorization, grant_type, username, password, opts)

Create an IAM access token for a user using username / password credentials and an optional account identifier.

Creates a non-opaque access token for a username and password. To be able to call IBM Cloud APIs, the token must be made account-specific. For this purpose, also pass the 32 character long identifier for your account in the API call. This API call is possible only for non-federated IBMid users.

### Example

```ruby
# load the gem
require 'ibm_cloud_iam'

api_instance = IbmCloudIam::TokenOperationsApi.new
authorization = 'authorization_example' # String | Basic Authorization Header containing a valid client ID and secret. If this header is omitted the request fails with BXNIM0308E: 'No authorization header found'. You can use the client ID and secret that is used by the IBM Cloud CLI: `bx / bx`
grant_type = 'grant_type_example' # String | Grant type for this API call. You must set the grant type to `password`.
username = 'username_example' # String | The value of the username
password = 'password_example' # String | The value of the password
opts = {
  account: 'account_example' # String | The 32 character identifier of the account. Specify this parameter to get an account-specific IAM token. IBM Cloud APIs require that IAM tokens are account-specific.
}

begin
  #Create an IAM access token for a user using username / password credentials and an optional account identifier.
  result = api_instance.get_token_password(authorization, grant_type, username, password, opts)
  p result
rescue IbmCloudIam::ApiError => e
  puts "Exception when calling TokenOperationsApi->get_token_password: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Basic Authorization Header containing a valid client ID and secret. If this header is omitted the request fails with BXNIM0308E: &#39;No authorization header found&#39;. You can use the client ID and secret that is used by the IBM Cloud CLI: &#x60;bx / bx&#x60; | 
 **grant_type** | **String**| Grant type for this API call. You must set the grant type to &#x60;password&#x60;. | 
 **username** | **String**| The value of the username | 
 **password** | **String**| The value of the password | 
 **account** | **String**| The 32 character identifier of the account. Specify this parameter to get an account-specific IAM token. IBM Cloud APIs require that IAM tokens are account-specific. | [optional] 

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

