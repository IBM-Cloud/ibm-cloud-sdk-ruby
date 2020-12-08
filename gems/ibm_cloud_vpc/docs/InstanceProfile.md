# IbmCloudVpc::InstanceProfile

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bandwidth** | [**InstanceProfileBandwidth**](InstanceProfileBandwidth.md) |  | 
**family** | **String** | The product family this virtual server instance profile belongs to | [optional] 
**href** | **String** | The URL for this virtual server instance profile | 
**memory** | [**InstanceProfileMemory**](InstanceProfileMemory.md) |  | 
**name** | **String** | The globally unique name for this virtual server instance profile | 
**os_architecture** | [**InstanceProfileOSArchitecture**](InstanceProfileOSArchitecture.md) |  | 
**port_speed** | [**InstanceProfilePortSpeed**](InstanceProfilePortSpeed.md) |  | 
**vcpu_architecture** | [**InstanceProfileVCPUArchitecture**](InstanceProfileVCPUArchitecture.md) |  | 
**vcpu_count** | [**InstanceProfileVCPU**](InstanceProfileVCPU.md) |  | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::InstanceProfile.new(bandwidth: null,
                                 family: balanced,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/instance/profiles/bc1-4x16,
                                 memory: null,
                                 name: bc1-4x16,
                                 os_architecture: null,
                                 port_speed: null,
                                 vcpu_architecture: null,
                                 vcpu_count: null)
```


