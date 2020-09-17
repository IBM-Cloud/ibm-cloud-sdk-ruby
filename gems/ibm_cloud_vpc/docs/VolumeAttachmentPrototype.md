# IbmCloudVpc::VolumeAttachmentPrototype

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**delete_volume_on_instance_delete** | **Boolean** | If set to true, when deleting the instance the volume will also be deleted | [optional] [default to false]
**name** | **String** | The user-defined name for this volume attachment. If unspecified, the name will be a hyphenated list of randomly-selected words. | [optional] 
**volume** | [**VolumeIdentity**](VolumeIdentity.md) |  | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::VolumeAttachmentPrototype.new(delete_volume_on_instance_delete: null,
                                 name: my-volume-attachment,
                                 volume: null)
```


