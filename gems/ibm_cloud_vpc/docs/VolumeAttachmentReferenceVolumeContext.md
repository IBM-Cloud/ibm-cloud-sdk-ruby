# IbmCloudVpc::VolumeAttachmentReferenceVolumeContext

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**delete_volume_on_instance_delete** | **Boolean** | If set to true, when deleting the instance the volume will also be deleted | 
**deleted** | [**Deleted**](Deleted.md) |  | [optional] 
**device** | [**VolumeAttachmentDevice**](VolumeAttachmentDevice.md) |  | [optional] 
**href** | **String** | The URL for this volume attachment | 
**id** | **String** | The unique identifier for this volume attachment | 
**instance** | [**InstanceReference**](InstanceReference.md) |  | 
**name** | **String** | The user-defined name for this volume attachment | 
**type** | **String** | The type of volume attachment | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::VolumeAttachmentReferenceVolumeContext.new(delete_volume_on_instance_delete: null,
                                 deleted: null,
                                 device: null,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/instances/1e09281b-f177-46fb-baf1-bc152b2e391a/volume_attachments/82cbf856-9cbb-45fb-b62f-d7bcef32399a,
                                 id: 82cbf856-9cbb-45fb-b62f-d7bcef32399a,
                                 instance: null,
                                 name: my-volume-attachment,
                                 type: null)
```


