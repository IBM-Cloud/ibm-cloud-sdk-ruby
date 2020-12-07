# IbmCloudPower::VolumesCloneCreate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Unique name within a cloud instance used to identify a volumes-clone request name can be used in replace of a volumesCloneID when used as a URL path parameter  | 
**volume_i_ds** | **Array&lt;String&gt;** | List of volumes to be cloned | 

## Code Sample

```ruby
require 'IbmCloudPower'

instance = IbmCloudPower::VolumesCloneCreate.new(name: null,
                                 volume_i_ds: null)
```


