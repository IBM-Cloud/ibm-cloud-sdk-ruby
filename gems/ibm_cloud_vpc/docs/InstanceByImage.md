# IbmCloudVpc::InstanceByImage

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**boot_volume_attachment** | [**VolumeAttachmentPrototypeInstanceByImageContext**](VolumeAttachmentPrototypeInstanceByImageContext.md) |  | [optional] 
**image** | [**ImageIdentity**](ImageIdentity.md) |  | 
**primary_network_interface** | [**NetworkInterfacePrototype**](NetworkInterfacePrototype.md) |  | 
**zone** | [**ZoneIdentity**](ZoneIdentity.md) |  | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::InstanceByImage.new(boot_volume_attachment: null,
                                 image: null,
                                 primary_network_interface: null,
                                 zone: null)
```


