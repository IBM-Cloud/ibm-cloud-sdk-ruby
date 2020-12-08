# IbmCloudVpc::FlowLogCollectorPrototype

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **Boolean** | Indicates whether this collector is active. If false, this collector is created in inactive mode. | [optional] [default to true]
**name** | **String** | The unique user-defined name for this flow log collector. If unspecified, the name will be a hyphenated list of randomly-selected words. | [optional] 
**resource_group** | [**ResourceGroupIdentity**](ResourceGroupIdentity.md) |  | [optional] 
**storage_bucket** | [**CloudObjectStorageBucketIdentity**](CloudObjectStorageBucketIdentity.md) |  | 
**target** | [**FlowLogCollectorTargetPrototype**](FlowLogCollectorTargetPrototype.md) |  | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::FlowLogCollectorPrototype.new(active: false,
                                 name: my-flow-log-collector,
                                 resource_group: null,
                                 storage_bucket: null,
                                 target: null)
```


