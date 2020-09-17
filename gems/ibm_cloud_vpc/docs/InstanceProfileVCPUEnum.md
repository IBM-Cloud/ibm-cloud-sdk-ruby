# IbmCloudVpc::InstanceProfileVCPUEnum

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**default** | **Integer** | The default value for this profile field | 
**type** | **String** | The type for this profile field | 
**values** | **Array&lt;Integer&gt;** | The permitted values for this profile field | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::InstanceProfileVCPUEnum.new(default: null,
                                 type: null,
                                 values: [2,4,16])
```


