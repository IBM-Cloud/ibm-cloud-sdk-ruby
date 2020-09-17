# IbmCloudVpc::FlowLogCollectorPatch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **Boolean** | Indicates whether this collector is active. Updating to false deactivates the collector and updating to true activates the collector. | [optional] 
**name** | **String** | The unique user-defined name for this flow log collector. | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::FlowLogCollectorPatch.new(active: true,
                                 name: my-flow-log-collector)
```


