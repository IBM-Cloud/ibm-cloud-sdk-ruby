# IbmCloudPower::VolumesCloneDetail

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**volumes_clone_id** | **String** | ID assigned to a volumes-clone request | [optional] 
**name** | **String** | Name assigned to a volumes-clone request | [optional] 
**status** | **String** | Current status of the volumes-clone request | [optional] 
**action** | **String** | Current action performed for the volumes-clone request | [optional] 
**percent_complete** | **Integer** | The percent completion for the current action | 
**failure_message** | **String** | Failure reason for a failed volumes-clone request | [optional] 
**creation_date** | **DateTime** | Creation Date | [optional] 
**last_update_date** | **DateTime** | Last Update Date | [optional] 
**cloned_volumes** | [**Array&lt;ClonedVolumeDetail&gt;**](ClonedVolumeDetail.md) | List of cloned volumes created from the volumes-clone request. The clone volumes information is included only after the Execute step has completed successfully. The source and clone volume names might not be provided as this information is retrieved in a separate API call and might not complete in a timely manner. | [optional] 

## Code Sample

```ruby
require 'IbmCloudPower'

instance = IbmCloudPower::VolumesCloneDetail.new(volumes_clone_id: null,
                                 name: null,
                                 status: null,
                                 action: null,
                                 percent_complete: null,
                                 failure_message: null,
                                 creation_date: null,
                                 last_update_date: null,
                                 cloned_volumes: null)
```


