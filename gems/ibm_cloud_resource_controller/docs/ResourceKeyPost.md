# IbmCloudResourceController::ResourceKeyPost

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The name of the key. | 
**source** | **String** | The short or long ID of resource instance or alias. | 
**parameters** | [**ResourceBindingPostParameters**](ResourceBindingPostParameters.md) |  | [optional] 
**role** | **String** | The role name or it&#39;s CRN. | [optional] [default to &#39;Writer&#39;]

## Code Sample

```ruby
require 'IbmCloudResourceController'

instance = IbmCloudResourceController::ResourceKeyPost.new(name: my-key,
                                 source: 25eba2a9-beef-450b-82cf-f5ad5e36c6dd,
                                 parameters: null,
                                 role: Writer)
```


