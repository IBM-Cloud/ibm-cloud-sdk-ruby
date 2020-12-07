# IbmCloudPower::CloneTaskStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **String** | Status of the clone volumes task | 
**percent_complete** | **Integer** | Snapshot completion percentage | 
**cloned_volumes** | [**Array&lt;ClonedVolume&gt;**](ClonedVolume.md) | List of cloned volumes created from the clone volumes task | [optional] 
**failed_reason** | **String** | The reason the clone volumes task has failed | [optional] 

## Code Sample

```ruby
require 'IbmCloudPower'

instance = IbmCloudPower::CloneTaskStatus.new(status: null,
                                 percent_complete: null,
                                 cloned_volumes: null,
                                 failed_reason: null)
```


