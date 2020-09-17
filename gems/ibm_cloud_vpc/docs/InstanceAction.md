# IbmCloudVpc::InstanceAction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**completed_at** | **DateTime** | The date and time that the action was completed | [optional] 
**created_at** | **DateTime** | The date and time that the action was created | 
**force** | **Boolean** | If set to true, the action will be forced immediately, and all queued actions deleted. Ignored for the start action. | [optional] 
**href** | **String** | The URL for this instance action | 
**id** | **String** | The identifier for this instance action | 
**started_at** | **DateTime** | The date and time that the action was started | [optional] 
**status** | **String** | The current status of this action | 
**type** | **String** | The type of action | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::InstanceAction.new(completed_at: null,
                                 created_at: null,
                                 force: null,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/instances/1e09281b-f177-46fb-baf1-bc152b2e391a/actions/109a1b6e-1242-4de1-be44-38705e9474ed,
                                 id: 109a1b6e-1242-4de1-be44-38705e9474ed,
                                 started_at: null,
                                 status: null,
                                 type: null)
```


