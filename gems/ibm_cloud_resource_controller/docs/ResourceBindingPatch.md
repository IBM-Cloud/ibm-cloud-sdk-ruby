# IbmCloudResourceController::ResourceBindingPatch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The new name of the binding. Must be 180 characters or less and cannot include any special characters other than &#x60;(space) - . _ :&#x60;. | 

## Code Sample

```ruby
require 'IbmCloudResourceController'

instance = IbmCloudResourceController::ResourceBindingPatch.new(name: my-new-binding-name)
```


