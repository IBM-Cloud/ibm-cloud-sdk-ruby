# IbmCloudVpc::ImagePrototype

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The unique user-defined name for this image. Names starting with \\\&quot;ibm-\\\&quot; are not allowed. If unspecified, the name will be a hyphenated list of randomly-selected words. | [optional] 
**resource_group** | [**ResourceGroupIdentity**](ResourceGroupIdentity.md) |  | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::ImagePrototype.new(name: my-image,
                                 resource_group: null)
```


