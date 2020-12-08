# IbmCloudVpc::InstanceProfileVCPUArchitecture

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**default** | **String** | The default VCPU architecture for an instance with this profile | [optional] 
**type** | **String** | The type for this profile field | 
**value** | **String** | The VCPU architecture for an instance with this profile | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::InstanceProfileVCPUArchitecture.new(default: null,
                                 type: null,
                                 value: amd64)
```


