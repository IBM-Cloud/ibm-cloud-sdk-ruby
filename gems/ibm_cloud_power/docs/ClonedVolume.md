# IbmCloudPower::ClonedVolume

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**source_volume_id** | **String** | ID of the source volume to be cloned | [optional] 
**cloned_volume_id** | **String** | ID of the new cloned volume | [optional] 

## Code Sample

```ruby
require 'IbmCloudPower'

instance = IbmCloudPower::ClonedVolume.new(source_volume_id: null,
                                 cloned_volume_id: null)
```


