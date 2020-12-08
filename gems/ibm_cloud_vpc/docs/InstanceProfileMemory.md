# IbmCloudVpc::InstanceProfileMemory

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The type for this profile field | 
**value** | **Integer** | The value for this profile field | 
**default** | **Integer** | The default value for this profile field | 
**max** | **Integer** | The maximum value for this profile field | 
**min** | **Integer** | The minimum value for this profile field | 
**step** | **Integer** | The increment step value for this profile field | 
**values** | **Array&lt;Integer&gt;** | The permitted values for this profile field | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::InstanceProfileMemory.new(type: null,
                                 value: 16,
                                 default: null,
                                 max: 384,
                                 min: 8,
                                 step: 8,
                                 values: [8,16,32])
```


