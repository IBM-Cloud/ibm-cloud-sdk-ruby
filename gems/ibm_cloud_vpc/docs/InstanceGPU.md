# IbmCloudVpc::InstanceGPU

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**count** | **Integer** | The number of GPUs assigned to the instance | 
**manufacturer** | **String** | The GPU manufacturer | 
**memory** | **Integer** | The overall amount of GPU memory in GiB (gibibytes) | 
**model** | **String** | The GPU model | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::InstanceGPU.new(count: null,
                                 manufacturer: nvidia,
                                 memory: null,
                                 model: Tesla V100)
```


