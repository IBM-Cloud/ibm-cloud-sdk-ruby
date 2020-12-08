# IbmCloudVpc::RoutingTableReference

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**deleted** | [**Deleted**](Deleted.md) |  | [optional] 
**href** | **String** | The URL for this routing table | 
**id** | **String** | The unique identifier for this routing table | 
**name** | **String** | The user-defined name for this routing table. | 
**resource_type** | **String** | The resource type | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::RoutingTableReference.new(deleted: null,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/vpcs/982d72b7-db1b-4606-afb2-ed6bd4b0bed1/routing_tables/6885e83f-03b2-4603-8a86-db2a0f55c840,
                                 id: 1a15dca5-7e33-45e1-b7c5-bc690e569531,
                                 name: my-routing-table-1,
                                 resource_type: null)
```


