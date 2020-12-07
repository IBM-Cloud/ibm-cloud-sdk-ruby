# IbmCloudResourceController::ResourceAliasPost

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The name of the alias. Must be 180 characters or less and cannot include any special characters other than &#x60;(space) - . _ :&#x60;. | 
**source** | **String** | The short or long ID of resource instance. | 
**target** | **String** | The CRN of target name(space) in a specific environment, e.g. space in Dallas YP, CFEE instance etc. | 

## Code Sample

```ruby
require 'IbmCloudResourceController'

instance = IbmCloudResourceController::ResourceAliasPost.new(name: my-alias,
                                 source: a8dff6d3-d287-4668-a81d-c87c55c2656d,
                                 target: crn:v1:cf:public:cf:us-south:o/5e939cd5-6377-4383-b9e0-9db22cd11753::cf-space:66c8b915-101a-406c-a784-e6636676e4f5)
```


