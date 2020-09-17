# IbmCloudVpc::InstanceProfile

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bandwidth** | [**OneOfInstanceProfileBandwidthFixedInstanceProfileBandwidthRangeInstanceProfileBandwidthEnumInstanceProfileBandwidthDependent**](OneOfInstanceProfileBandwidthFixedInstanceProfileBandwidthRangeInstanceProfileBandwidthEnumInstanceProfileBandwidthDependent.md) |  | 
**family** | **String** | The product family this virtual server instance profile belongs to | [optional] 
**href** | **String** | The URL for this virtual server instance profile | 
**memory** | [**InstanceProfileMemory**](InstanceProfileMemory.md) |  | 
**name** | **String** | The name for this virtual server instance profile | 
**os_architecture** | [**InstanceProfileOSArchitecture**](InstanceProfileOSArchitecture.md) |  | 
**port_speed** | [**OneOfInstanceProfilePortSpeedFixedInstanceProfilePortSpeedDependent**](OneOfInstanceProfilePortSpeedFixedInstanceProfilePortSpeedDependent.md) |  | 
**vcpu_architecture** | [**InstanceProfileVCPUArchitecture**](InstanceProfileVCPUArchitecture.md) |  | 
**vcpu_count** | [**InstanceProfileVCPU**](InstanceProfileVCPU.md) |  | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::InstanceProfile.new(bandwidth: {&quot;type&quot;:&quot;fixed&quot;,&quot;value&quot;:20000},
                                 family: balanced,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/instance/profiles/bc1-4x16,
                                 memory: null,
                                 name: bc1-4x16,
                                 os_architecture: null,
                                 port_speed: {&quot;type&quot;:&quot;fixed&quot;,&quot;value&quot;:1000},
                                 vcpu_architecture: null,
                                 vcpu_count: null)
```


