# IbmCloudVpc::LoadBalancerPrototype

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**is_public** | **Boolean** | The type of this load balancer, public or private | 
**listeners** | [**Array&lt;LoadBalancerListenerPrototypeLoadBalancerContext&gt;**](LoadBalancerListenerPrototypeLoadBalancerContext.md) | The listeners of this load balancer | [optional] 
**name** | **String** | The user-defined name for this load balancer. If unspecified, the name will be a hyphenated list of randomly-selected words. | [optional] 
**pools** | [**Array&lt;LoadBalancerPoolPrototype&gt;**](LoadBalancerPoolPrototype.md) | The pools of this load balancer | [optional] 
**profile** | [**LoadBalancerProfileIdentity**](LoadBalancerProfileIdentity.md) |  | [optional] 
**resource_group** | [**ResourceGroupIdentity**](ResourceGroupIdentity.md) |  | [optional] 
**subnets** | [**Array&lt;SubnetIdentity&gt;**](SubnetIdentity.md) | The subnets to provision this load balancer | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::LoadBalancerPrototype.new(is_public: true,
                                 listeners: null,
                                 name: my-load-balancer,
                                 pools: null,
                                 profile: null,
                                 resource_group: null,
                                 subnets: null)
```


