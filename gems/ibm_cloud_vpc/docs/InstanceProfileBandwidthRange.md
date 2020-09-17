# IbmCloudVpc::InstanceProfileBandwidthRange

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**default** | **Integer** | The default value for this profile field | 
**max** | **Integer** | The maximum value for this profile field | 
**min** | **Integer** | The minimum value for this profile field | 
**step** | **Integer** | The increment step value for this profile field | 
**type** | **String** | The type for this profile field | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::InstanceProfileBandwidthRange.new(default: 10000,
                                 max: 80000,
                                 min: 1000,
                                 step: 1000,
                                 type: null)
```


