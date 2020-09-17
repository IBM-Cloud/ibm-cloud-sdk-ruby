# IbmCloudVpc::VolumeAttachmentPatch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**delete_volume_on_instance_delete** | **Boolean** | If set to true, when deleting the instance the volume will also be deleted | [optional] 
**name** | **String** | The user-defined name for this volume attachment | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::VolumeAttachmentPatch.new(delete_volume_on_instance_delete: null,
                                 name: my-volume-attachment)
```


