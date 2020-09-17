# IbmCloudIam::EnityHistoryRecord

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**timestamp** | **String** | Timestamp when the action was triggered | 
**iam_id** | **String** | IAM ID of the identity which triggered the action | 
**iam_id_account** | **String** | Account of the identity which triggered the action | 
**action** | **String** | Action of the history entry | 
**params** | **Array&lt;String&gt;** | Params of the history entry | 
**message** | **String** | Message which summarizes the executed action | 

## Code Sample

```ruby
require 'IbmCloudIam'

instance = IbmCloudIam::EnityHistoryRecord.new(timestamp: null,
                                 iam_id: null,
                                 iam_id_account: null,
                                 action: null,
                                 params: null,
                                 message: null)
```


