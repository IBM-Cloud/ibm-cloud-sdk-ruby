# IbmCloudIam::InlineObject3

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**grant_type** | **String** | Grant type for this API call. You must set the grant type to &#x60;urn:ibm:params:oauth:grant-type:apikey&#x60;. | 
**apikey** | **String** | The value of the API key. | 
**response_type** | **String** | Either &#39;delegated_refresh_token&#39; to receive a delegated refresh token only, or &#39;cloud_iam delegated_refresh_token&#39; to receive both an IAM access token and a delegated refresh token in one API call. | 
**receiver_client_ids** | **String** | A comma separated list of one or more client IDs that will be able to consume the delegated refresh token. The service that accepts a delegated refresh token as API parameter must expose its client ID to allow this API call. The receiver of the delegated refresh token will be able to use the refresh token until it expires. | 
**delegated_refresh_token_expiry** | **Integer** | Expiration in seconds until the delegated refresh token must be consumed by the receiver client IDs. After the expiration, no client ID can consume the delegated refresh token, even if the life time of the refresh token inside is still not expired. The default, if not specified, is 518,400 seconds which corresponds to 6 days. | [optional] 

## Code Sample

```ruby
require 'IbmCloudIam'

instance = IbmCloudIam::InlineObject3.new(grant_type: null,
                                 apikey: null,
                                 response_type: null,
                                 receiver_client_ids: null,
                                 delegated_refresh_token_expiry: null)
```


