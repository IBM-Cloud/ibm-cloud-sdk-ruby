# IbmCloudVpc::InstanceTemplate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **DateTime** | The date and time that the instance template was created | 
**crn** | **String** | The CRN for this instance template | 
**href** | **String** | The URL for this instance template | 
**id** | **String** | The unique identifier for this instance template | 
**keys** | [**Array&lt;KeyIdentity&gt;**](KeyIdentity.md) | The public SSH keys for the administrative user of the virtual server instance. Up to 10 keys may be provided; if no keys are provided the instance will be inaccessible unless the image used provides another means of access. For Windows instances, one of the keys will be used to encrypt the administrator password.  Keys will be made available to the virtual server instance as cloud-init vendor data. For cloud-init enabled images, these keys will also be added as SSH authorized keys for the administrative user. | [optional] 
**name** | **String** | The unique user-defined name for this instance template | 
**network_interfaces** | [**Array&lt;NetworkInterfacePrototype&gt;**](NetworkInterfacePrototype.md) | Collection of additional network interfaces to create for the virtual server instance | [optional] 
**profile** | [**InstanceProfileIdentity**](InstanceProfileIdentity.md) |  | [optional] 
**resource_group** | [**ResourceGroupReference**](ResourceGroupReference.md) |  | 
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

instance = IbmCloudVpc::InstanceTemplate.new(created_at: null,
                                 crn: crn:v1:bluemix:public:is:us-south-1:a/123456::instance-template:1e09281b-f177-46fb-baf1-bc152b2e391a,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/instance/templates/1e09281b-f177-46fb-baf1-bc152b2e391a,
                                 id: a6b1a881-2ce8-41a3-80fc-36316a73f803,
                                 keys: [{&quot;id&quot;:&quot;a6b1a881-2ce8-41a3-80fc-36316a73f803&quot;}],
                                 name: my-instance-template,
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


