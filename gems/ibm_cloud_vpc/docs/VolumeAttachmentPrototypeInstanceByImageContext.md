# IbmCloudVpc::VolumeAttachmentPrototypeInstanceByImageContext

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**delete_volume_on_instance_delete** | **Boolean** | If set to true, when deleting the instance the volume will also be deleted | [optional] [default to true]
**name** | **String** | The user-defined name for this volume attachment | [optional] 
**volume** | [**VolumePrototypeInstanceByImageContext**](VolumePrototypeInstanceByImageContext.md) |  | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::VolumeAttachmentPrototypeInstanceByImageContext.new(delete_volume_on_instance_delete: null,
                                 name: my-volume-attachment,
                                 volume: null)
```


