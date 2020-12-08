# IbmCloudVpc::LoadBalancerPrototype

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**is_public** | **Boolean** | Indicates whether this load balancer is public or private. | 
**listeners** | [**Array&lt;LoadBalancerListenerPrototypeLoadBalancerContext&gt;**](LoadBalancerListenerPrototypeLoadBalancerContext.md) | The listeners of this load balancer | [optional] 
**logging** | [**LoadBalancerLogging**](LoadBalancerLogging.md) | The logging configuration to use for this load balancer. See [VPC Datapath Logging](https://cloud.ibm.com/docs/vpc?topic&#x3D;vpc-datapath-logging) on the logging format, fields and permitted values.  To activate logging, the load balancer profile must support the specified logging type. | [optional] 
**name** | **String** | The user-defined name for this load balancer. If unspecified, the name will be a hyphenated list of randomly-selected words. | [optional] 
**pools** | [**Array&lt;LoadBalancerPoolPrototype&gt;**](LoadBalancerPoolPrototype.md) | The pools of this load balancer | [optional] 
**profile** | [**LoadBalancerProfileIdentity**](LoadBalancerProfileIdentity.md) |  | [optional] 
**resource_group** | [**ResourceGroupIdentity**](ResourceGroupIdentity.md) |  | [optional] 
**subnets** | [**Array&lt;SubnetIdentity&gt;**](SubnetIdentity.md) | The subnets to provision this load balancer. | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::LoadBalancerPrototype.new(is_public: true,
                                 listeners: null,
                                 logging: null,
                                 name: my-load-balancer,
                                 pools: null,
                                 profile: null,
                                 resource_group: null,
                                 subnets: null)
```


