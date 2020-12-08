# IbmCloudVpc::InstanceVCPU

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**architecture** | **String** | The VCPU architecture | 
**count** | **Integer** | The number of VCPUs assigned | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::InstanceVCPU.new(architecture: amd64,
                                 count: 4)
```


