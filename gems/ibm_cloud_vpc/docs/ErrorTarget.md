# IbmCloudVpc::ErrorTarget

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The name of the problematic field, query parameter, or header | 
**type** | **String** | The type of input where the problem was | 
**value** | **String** | If present, the problematic value within the field, query parameter, or header | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::ErrorTarget.new(name: zone.name,
                                 type: field,
                                 value: null)
```


