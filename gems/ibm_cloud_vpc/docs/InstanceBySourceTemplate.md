# IbmCloudVpc::InstanceBySourceTemplate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**boot_volume_attachment** | [**VolumeAttachmentPrototypeInstanceByImageContext**](VolumeAttachmentPrototypeInstanceByImageContext.md) |  | [optional] 
**image** | [**ImageIdentity**](ImageIdentity.md) |  | [optional] 
**primary_network_interface** | [**NetworkInterfacePrototype**](NetworkInterfacePrototype.md) |  | [optional] 
**source_template** | [**InstanceTemplateIdentity**](InstanceTemplateIdentity.md) |  | 
**zone** | [**ZoneIdentity**](ZoneIdentity.md) |  | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::InstanceBySourceTemplate.new(boot_volume_attachment: null,
                                 image: null,
                                 primary_network_interface: null,
                                 source_template: null,
                                 zone: null)
```


