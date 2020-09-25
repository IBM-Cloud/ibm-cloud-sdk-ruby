# IbmCloudVpc::FlowLogCollectorCollection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first** | [**FlowLogCollectorCollectionFirst**](FlowLogCollectorCollectionFirst.md) |  | 
**flow_log_collectors** | [**Array&lt;FlowLogCollector&gt;**](FlowLogCollector.md) | Collection of flow log collectors | 
**limit** | **Integer** | The maximum number of resources that can be returned by the request | 
**_next** | [**FlowLogCollectorCollectionNext**](FlowLogCollectorCollectionNext.md) |  | [optional] 
**total_count** | **Integer** | The total number of resources across all pages | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::FlowLogCollectorCollection.new(first: null,
                                 flow_log_collectors: null,
                                 limit: 20,
                                 _next: null,
                                 total_count: 132)
```

