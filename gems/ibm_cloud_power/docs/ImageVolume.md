# IbmCloudPower::ImageVolume

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**volume_id** | **String** | Volume ID | 
**name** | **String** | Volume Name | 
**size** | **Float** | Volume Size | 
**bootable** | **Boolean** | Indicates if the volume is boot capable | 

## Code Sample

```ruby
require 'IbmCloudPower'

instance = IbmCloudPower::ImageVolume.new(volume_id: null,
                                 name: null,
                                 size: null,
                                 bootable: null)
```


