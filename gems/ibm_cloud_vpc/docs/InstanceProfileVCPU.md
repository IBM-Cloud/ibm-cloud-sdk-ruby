# IbmCloudVpc::InstanceProfileVCPU

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

instance = IbmCloudVpc::InstanceProfileVCPU.new(type: null,
                                 value: 16,
                                 default: null,
                                 max: 56,
                                 min: 2,
                                 step: 2,
                                 values: [2,4,16])
```


