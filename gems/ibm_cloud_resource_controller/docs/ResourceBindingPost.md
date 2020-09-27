# IbmCloudResourceController::ResourceBindingPost

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The name of the binding. Must be 180 characters or less and cannot include any special characters other than &#x60;(space) - . _ :&#x60;. | [optional] 
**source** | **String** | The short or long ID of resource alias. | 
**target** | **String** | The CRN of application to bind to in a specific environment, e.g. Dallas YP, CFEE instance | 
**parameters** | [**ResourceBindingPostParameters**](ResourceBindingPostParameters.md) |  | [optional] 
**role** | **String** | The role name or it&#39;s CRN. | [optional] [default to &#39;Writer&#39;]

## Code Sample

```ruby
require 'IbmCloudResourceController'

instance = IbmCloudResourceController::ResourceBindingPost.new(name: my-binding,
                                 source: 25eba2a9-beef-450b-82cf-f5ad5e36c6dd,
                                 target: crn:v1:cf:public:cf:us-south:s/0ba4dba0-a120-4a1e-a124-5a249a904b76::cf-application:a1caa40b-2c24-4da8-8267-ac2c1a42ad0c,
                                 parameters: null,
                                 role: Writer)
```


