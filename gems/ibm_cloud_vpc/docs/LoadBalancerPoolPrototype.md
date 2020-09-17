# IbmCloudVpc::LoadBalancerPoolPrototype

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**algorithm** | **String** | The load balancing algorithm. | 
**health_monitor** | [**LoadBalancerPoolHealthMonitorPrototype**](LoadBalancerPoolHealthMonitorPrototype.md) |  | 
**members** | [**Array&lt;LoadBalancerPoolMemberPrototype&gt;**](LoadBalancerPoolMemberPrototype.md) | The members for this load balancer pool. For load balancers in the &#x60;network&#x60; family, the same &#x60;port&#x60; and &#x60;target&#x60; tuple cannot be shared by a member of any other load balancer. | [optional] 
**name** | **String** | The user-defined name for this load balancer pool. If unspecified, the name will be a hyphenated list of randomly-selected words. | [optional] 
**protocol** | **String** | The protocol used for this load balancer pool.  The enumerated values for this property are expected to expand in the future. When processing this property, check for and log unknown values. Optionally halt processing and surface the error, or bypass the pool on which the unexpected property value was encountered. | 
**session_persistence** | [**LoadBalancerPoolSessionPersistencePrototype**](LoadBalancerPoolSessionPersistencePrototype.md) |  | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::LoadBalancerPoolPrototype.new(algorithm: null,
                                 health_monitor: null,
                                 members: null,
                                 name: my-load-balancer-pool,
                                 protocol: null,
                                 session_persistence: null)
```


