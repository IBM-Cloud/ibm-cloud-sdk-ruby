# IbmCloudVpc::FlowLogCollectorPrototype

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **Boolean** | Indicates whether this collector is active. If false, this collector is created in inactive mode. | [optional] [default to true]
**name** | **String** | The unique user-defined name for this flow log collector. If unspecified, the name will be a hyphenated list of randomly-selected words. | [optional] 
**resource_group** | [**ResourceGroupIdentity**](ResourceGroupIdentity.md) |  | [optional] 
**storage_bucket** | [**CloudObjectStorageBucketIdentity**](CloudObjectStorageBucketIdentity.md) |  | 
**target** | [**OneOfNetworkInterfaceIdentityInstanceIdentitySubnetIdentityVPCIdentity**](OneOfNetworkInterfaceIdentityInstanceIdentitySubnetIdentityVPCIdentity.md) | The target this collector is to collect flow logs for. If the target is an instance, subnet, or VPC, flow logs will not be collected for any network interfaces within the target that are themselves the target of a more specific flow log collector. | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::FlowLogCollectorPrototype.new(active: false,
                                 name: my-flow-log-collector,
                                 resource_group: null,
                                 storage_bucket: null,
                                 target: {&quot;id&quot;:&quot;69e55145-cc7d-4d8e-9e1f-cc3fb60b1793&quot;})
```


