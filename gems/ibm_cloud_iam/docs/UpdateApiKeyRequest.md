# IbmCloudIam::UpdateApiKeyRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The name of the API key to update. If specified in the request the parameter must not be empty. The name is not checked for uniqueness. Failure to this will result in an Error condition. | [optional] 
**description** | **String** | The description of the API key to update. If specified an empty description will clear the description of the API key. If a non empty value is provided the API key will be updated. | [optional] 

## Code Sample

```ruby
require 'IbmCloudIam'

instance = IbmCloudIam::UpdateApiKeyRequest.new(name: null,
                                 description: null)
```


