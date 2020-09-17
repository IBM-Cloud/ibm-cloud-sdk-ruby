# IbmCloudVpc::InstanceTemplatePrototype

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**keys** | [**Array&lt;KeyIdentity&gt;**](KeyIdentity.md) | The public SSH keys for the administrative user of the virtual server instance. Up to 10 keys may be provided; if no keys are provided the instance will be inaccessible unless the image used provides another means of access. For Windows instances, one of the keys will be used to encrypt the administrator password.  Keys will be made available to the virtual server instance as cloud-init vendor data. For cloud-init enabled images, these keys will also be added as SSH authorized keys for the administrative user. | [optional] 
**name** | **String** | The unique user-defined name for this virtual server instance (and default system hostname). If unspecified, the name will be a hyphenated list of randomly-selected words. | [optional] 
**network_interfaces** | [**Array&lt;NetworkInterfacePrototype&gt;**](NetworkInterfacePrototype.md) | Collection of additional network interfaces to create for the virtual server instance | [optional] 
**profile** | [**InstanceProfileIdentity**](InstanceProfileIdentity.md) |  | [optional] 
**resource_group** | [**ResourceGroupIdentity**](ResourceGroupIdentity.md) |  | [optional] 
**user_data** | **String** | User data to be made available when setting up the virtual server instance | [optional] 
**volume_attachments** | [**Array&lt;VolumeAttachmentPrototypeInstanceContext&gt;**](VolumeAttachmentPrototypeInstanceContext.md) | Collection of volume attachments | [optional] 
**vpc** | [**VPCIdentity**](VPCIdentity.md) |  | [optional] 
**boot_volume_attachment** | [**VolumeAttachmentPrototypeInstanceByImageContext**](VolumeAttachmentPrototypeInstanceByImageContext.md) |  | [optional] 
**image** | [**ImageIdentity**](ImageIdentity.md) |  | 
**primary_network_interface** | [**NetworkInterfacePrototype**](NetworkInterfacePrototype.md) |  | 
**zone** | [**ZoneIdentity**](ZoneIdentity.md) |  | 
**source_template** | [**InstanceTemplateIdentity**](InstanceTemplateIdentity.md) |  | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::InstanceTemplatePrototype.new(keys: [{&quot;id&quot;:&quot;a6b1a881-2ce8-41a3-80fc-36316a73f803&quot;}],
                                 name: my-instance,
                                 network_interfaces: null,
                                 profile: null,
                                 resource_group: null,
                                 user_data: null,
                                 volume_attachments: null,
                                 vpc: null,
                                 boot_volume_attachment: null,
                                 image: null,
                                 primary_network_interface: null,
                                 zone: null,
                                 source_template: null)
```


