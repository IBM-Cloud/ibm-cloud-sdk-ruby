# IbmCloudIam::ApiKeyInsideCreateServiceIdRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of the API key. The name is not checked for uniqueness. Therefore multiple names with the same value can exist. Access is done via the UUID of the API key. | 
**description** | **String** | The optional description of the API key. The &#39;description&#39; property is only available if a description was provided during a create of an API key. | [optional] 
**apikey** | **String** | You can optionally passthrough the API key value for this API key. If passed, NO validation of that apiKey value is done, i.e. the value can be non-URL safe. If omitted, the API key management will create an URL safe opaque API key value. The value of the API key is checked for uniqueness. Please ensure enough variations when passing in this value. | [optional] 
**store_value** | **Boolean** | Send true or false to set whether the API key value is retrievable in the future by using the Get details of an API key request. If you create an API key for a user, you must specify &#x60;false&#x60; or omit the value. We don&#39;t allow storing of API keys for users. | [optional] 

## Code Sample

```ruby
require 'IbmCloudIam'

instance = IbmCloudIam::ApiKeyInsideCreateServiceIdRequest.new(name: null,
                                 description: null,
                                 apikey: null,
                                 store_value: null)
```


