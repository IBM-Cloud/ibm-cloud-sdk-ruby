# IbmCloudObjectStorage::ReplicationRule

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**prefix** | **String** |  | 
**status** | [**ReplicationRuleStatus**](ReplicationRuleStatus.md) |  | 
**source_selection_criteria** | [**SourceSelectionCriteria**](SourceSelectionCriteria.md) |  | [optional] 
**destination** | [**Destination**](Destination.md) |  | 

## Code Sample

```ruby
require 'IbmCloudObjectStorage'

instance = IbmCloudObjectStorage::ReplicationRule.new(id: null,
                                 prefix: null,
                                 status: null,
                                 source_selection_criteria: null,
                                 destination: null)
```


