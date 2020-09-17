# IbmCloudIam::InlineObject1

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**grant_type** | **String** | Grant type for this API call. You must set the grant type to &#x60;password&#x60;. | 
**username** | **String** | The value of the username | 
**password** | **String** | The value of the password | 
**account** | **String** | The 32 character identifier of the account. Specify this parameter to get an account-specific IAM token. IBM Cloud APIs require that IAM tokens are account-specific. | [optional] 

## Code Sample

```ruby
require 'IbmCloudIam'

instance = IbmCloudIam::InlineObject1.new(grant_type: null,
                                 username: null,
                                 password: null,
                                 account: null)
```


