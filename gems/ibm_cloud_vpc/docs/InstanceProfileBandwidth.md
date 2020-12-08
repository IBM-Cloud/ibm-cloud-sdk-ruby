# IbmCloudVpc::InstanceProfileBandwidth

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

instance = IbmCloudVpc::InstanceProfileBandwidth.new(type: null,
                                 value: 20000,
                                 default: null,
                                 max: 80000,
                                 min: 1000,
                                 step: 1000,
                                 values: [16000,32000,48000])
```


