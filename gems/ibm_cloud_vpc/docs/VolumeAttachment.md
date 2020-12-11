# IbmCloudVpc::VolumeAttachment

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **DateTime** | The date and time that the volume was attached | 
**delete_volume_on_instance_delete** | **Boolean** | If set to true, when deleting the instance the volume will also be deleted | [optional] 
**device** | [**VolumeAttachmentDevice**](VolumeAttachmentDevice.md) |  | [optional] 
**href** | **String** | The URL for this volume attachment | 
**id** | **String** | The unique identifier for this volume attachment | 
**name** | **String** | The user-defined name for this volume attachment | 
**status** | **String** | The status of this volume attachment | 
**type** | **String** | The type of volume attachment | 
**volume** | [**VolumeReference**](VolumeReference.md) |  | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::VolumeAttachment.new(created_at: null,
                                 delete_volume_on_instance_delete: null,
                                 device: null,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/instances/1e09281b-f177-46fb-baf1-bc152b2e391a/volume_attachments/82cbf856-9cbb-45fb-b62f-d7bcef32399a,
                                 id: 82cbf856-9cbb-45fb-b62f-d7bcef32399a,
                                 name: my-volume-attachment,
                                 status: null,
                                 type: null,
                                 volume: null)
```


