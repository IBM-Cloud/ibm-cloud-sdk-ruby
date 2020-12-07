# IbmCloudPower::VolumesCloneCancel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**force** | **Boolean** | default False, Cancel will only be allowed if the status is ‘prepared’, or ‘available’ True, Cancel will be allowed when the status is NOT completed, cancelling, cancelled, or failed        | [optional] 

## Code Sample

```ruby
require 'IbmCloudPower'

instance = IbmCloudPower::VolumesCloneCancel.new(force: null)
```


