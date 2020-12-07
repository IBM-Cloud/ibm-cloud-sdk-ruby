# IbmCloudResourceController::ResourceAliasPatch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The new name of the alias. Must be 180 characters or less and cannot include any special characters other than &#x60;(space) - . _ :&#x60;. | 

## Code Sample

```ruby
require 'IbmCloudResourceController'

instance = IbmCloudResourceController::ResourceAliasPatch.new(name: my-new-alias-name)
```


