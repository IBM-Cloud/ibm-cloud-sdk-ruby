# IbmCloudPower::SnapshotCreate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of the PVM instance snapshot to create. | 
**description** | **String** | Description of the PVM instance snapshot. | [optional] 
**volume_i_ds** | **Array&lt;String&gt;** | List of volumes to include in the PVM instance snapshot. This parameter is optional. If you do not specify this parameter or if the volumeIDs list is empty, all the volumes that are attached to the PVM instance are included in the snapshot. | [optional] 

## Code Sample

```ruby
require 'IbmCloudPower'

instance = IbmCloudPower::SnapshotCreate.new(name: null,
                                 description: null,
                                 volume_i_ds: null)
```


