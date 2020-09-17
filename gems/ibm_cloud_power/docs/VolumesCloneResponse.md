# IbmCloudPower::VolumesCloneResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cloned_volumes** | **Object** | A map of volume IDs to cloned volume IDs | [optional] 
**additional_properties** | **String** | ID of the new cloned volume | [optional] 

## Code Sample

```ruby
require 'IbmCloudPower'

instance = IbmCloudPower::VolumesCloneResponse.new(cloned_volumes: null,
                                 additional_properties: null)
```


