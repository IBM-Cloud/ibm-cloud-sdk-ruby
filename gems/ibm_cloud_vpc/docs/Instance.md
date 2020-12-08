# IbmCloudVpc::Instance

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bandwidth** | **Integer** | The total bandwidth (in megabits per second) shared across the virtual server instance&#39;s network interfaces | 
**boot_volume_attachment** | [**VolumeAttachmentReferenceInstanceContext**](VolumeAttachmentReferenceInstanceContext.md) |  | 
**created_at** | **DateTime** | The date and time that the virtual server instance was created | 
**crn** | **String** | The CRN for this virtual server instance | 
**gpu** | [**InstanceGPU**](InstanceGPU.md) |  | [optional] 
**href** | **String** | The URL for this virtual server instance | 
**id** | **String** | The unique identifier for this virtual server instance | 
**image** | [**ImageReference**](ImageReference.md) |  | [optional] 
**memory** | **Integer** | The amount of memory in gigabytes | 
**name** | **String** | The user-defined name for this virtual server instance (and default system hostname) | 
**network_interfaces** | [**Array&lt;NetworkInterfaceInstanceContextReference&gt;**](NetworkInterfaceInstanceContextReference.md) | Collection of the virtual server instance&#39;s network interfaces, including the primary network interface | 
**primary_network_interface** | [**NetworkInterfaceInstanceContextReference**](NetworkInterfaceInstanceContextReference.md) |  | 
**profile** | [**InstanceProfileReference**](InstanceProfileReference.md) |  | 
**resource_group** | [**ResourceGroupReference**](ResourceGroupReference.md) |  | 
**status** | **String** | The status of the virtual server instance | 
**vcpu** | [**InstanceVCPU**](InstanceVCPU.md) |  | 
**volume_attachments** | [**Array&lt;VolumeAttachmentReferenceInstanceContext&gt;**](VolumeAttachmentReferenceInstanceContext.md) | Collection of the virtual server instance&#39;s volume attachments, including the boot volume attachment | 
**vpc** | [**VPCReference**](VPCReference.md) |  | 
**zone** | [**ZoneReference**](ZoneReference.md) |  | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::Instance.new(bandwidth: 1000,
                                 boot_volume_attachment: null,
                                 created_at: null,
                                 crn: crn:v1:bluemix:public:is:us-south-1:a/123456::instance:1e09281b-f177-46fb-baf1-bc152b2e391a,
                                 gpu: null,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/instances/1e09281b-f177-46fb-baf1-bc152b2e391a,
                                 id: 1e09281b-f177-46fb-baf1-bc152b2e391a,
                                 image: null,
                                 memory: 8,
                                 name: my-instance,
                                 network_interfaces: null,
                                 primary_network_interface: null,
                                 profile: null,
                                 resource_group: null,
                                 status: null,
                                 vcpu: null,
                                 volume_attachments: null,
                                 vpc: null,
                                 zone: null)
```


