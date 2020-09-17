# IbmCloudVpc::VolumeAttachmentReferenceInstanceContext

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**device** | [**VolumeAttachmentDevice**](VolumeAttachmentDevice.md) |  | [optional] 
**href** | **String** | The URL for this volume attachment | 
**id** | **String** | The unique identifier for this volume attachment | 
**name** | **String** | The user-defined name for this volume attachment | 
**volume** | [**VolumeReference**](VolumeReference.md) |  | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::VolumeAttachmentReferenceInstanceContext.new(device: null,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/instances/1e09281b-f177-46fb-baf1-bc152b2e391a/volume_attachments/82cbf856-9cbb-45fb-b62f-d7bcef32399a,
                                 id: 82cbf856-9cbb-45fb-b62f-d7bcef32399a,
                                 name: my-volume-attachment,
                                 volume: null)
```


