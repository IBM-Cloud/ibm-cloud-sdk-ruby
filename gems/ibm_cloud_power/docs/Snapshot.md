# IbmCloudPower::Snapshot

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**snapshot_id** | **String** | ID of the PVM instance snapshot | 
**pvm_instance_id** | **String** | PCloud PVM Instance ID | 
**name** | **String** | Name of the PVM instance snapshot | 
**description** | **String** | Description of the PVM instance snapshot | [optional] 
**status** | **String** | Status of the PVM instancesnapshot | [optional] 
**volume_snapshots** | **Hash&lt;String, String&gt;** | A map of volume snapshots included in the PVM instance snapshot | 
**creation_date** | **DateTime** | Creation Date | [optional] 
**last_update_date** | **DateTime** | Last Update Date | [optional] 
**action** | **String** | Action performed on the instance snapshot | [optional] 
**percent_complete** | **Float** | Snapshot completion percentage | [optional] 

## Code Sample

```ruby
require 'IbmCloudPower'

instance = IbmCloudPower::Snapshot.new(snapshot_id: null,
                                 pvm_instance_id: null,
                                 name: null,
                                 description: null,
                                 status: null,
                                 volume_snapshots: null,
                                 creation_date: null,
                                 last_update_date: null,
                                 action: null,
                                 percent_complete: null)
```


