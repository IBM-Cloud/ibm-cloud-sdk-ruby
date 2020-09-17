# IbmCloudVpc::Error

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **String** | A snake case string succinctly identifying the problem | 
**message** | **String** | An explanation of the problem | 
**more_info** | **String** | Link to documentation about this error | [optional] 
**target** | [**ErrorTarget**](ErrorTarget.md) |  | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::Error.new(code: missing_field,
                                 message: The &#x60;zone.name&#x60; field is required.,
                                 more_info: https://console.bluemix.net/docs/iaas/instances.html#template,
                                 target: null)
```


