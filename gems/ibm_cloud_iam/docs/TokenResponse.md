# IbmCloudIam::TokenResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**access_token** | **String** | The IAM access token that can be used to invoke various IBM Cloud APIs. Use this token with the prefix Bearer in the HTTP header Authorization for invocations of IAM compatible APIs. | [optional] 
**refresh_token** | **String** | (optional) A refresh token that can be used to get a new IAM access token if that token is expired. When using the default client (no basic authorization header) as described in this documentation, this refresh_token cannot be used to retrieve a new IAM access token. When the IAM access token is about to be expired, use the API key to create a new access token. | [optional] 
**delegated_refresh_token** | **String** | (optional) A delegated refresh token that can only be consumed by the clients that have been specified in the API call as &#39;receiver_client_ids&#39; | [optional] 
**token_type** | **String** | The type of the token. Currently, only Bearer is returned. | [optional] 
**expires_in** | **Integer** | Number of seconds until the IAM access token will expire. | [optional] 
**expiration** | **Integer** | Number of seconds counted since January 1st, 1970, until the IAM access token will expire. | [optional] 

## Code Sample

```ruby
require 'IbmCloudIam'

instance = IbmCloudIam::TokenResponse.new(access_token: null,
                                 refresh_token: null,
                                 delegated_refresh_token: null,
                                 token_type: null,
                                 expires_in: null,
                                 expiration: null)
```


