# IbmCloudResourceController::Credentials

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**apikey** | **String** | The API key for the credentials. | [optional] 
**iam_apikey_description** | **String** | The optional description of the API key. | [optional] 
**iam_apikey_name** | **String** | The name of the API key. | [optional] 
**iam_role_crn** | **String** | The Cloud Resource Name for the role of the credentials. | [optional] 
**iam_serviceid_crn** | **String** | The Cloud Resource Name for the service ID of the credentials. | [optional] 

## Code Sample

```ruby
require 'IbmCloudResourceController'

instance = IbmCloudResourceController::Credentials.new(apikey: null,
                                 iam_apikey_description: null,
                                 iam_apikey_name: null,
                                 iam_role_crn: null,
                                 iam_serviceid_crn: null)
```


