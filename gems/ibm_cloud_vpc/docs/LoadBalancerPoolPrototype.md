# IbmCloudVpc::LoadBalancerPoolPrototype

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**algorithm** | **String** | The load balancing algorithm. | 
**health_monitor** | [**LoadBalancerPoolHealthMonitorPrototype**](LoadBalancerPoolHealthMonitorPrototype.md) |  | 
**members** | [**Array&lt;LoadBalancerPoolMemberPrototype&gt;**](LoadBalancerPoolMemberPrototype.md) | The members for this load balancer pool. For load balancers in the &#x60;network&#x60; family, the same &#x60;port&#x60; and &#x60;target&#x60; tuple cannot be shared by a pool member of any other load balancer in the same VPC. | [optional] 
**name** | **String** | The user-defined name for this load balancer pool. If unspecified, the name will be a hyphenated list of randomly-selected words. | [optional] 
**protocol** | **String** | The protocol used for this load balancer pool. Load balancers in the &#x60;network&#x60; family support &#x60;tcp&#x60;. Load balancers in the &#x60;application&#x60; family support &#x60;tcp&#x60;, &#x60;http&#x60;, and &#x60;https&#x60;. | 
**proxy_protocol** | **String** | The PROXY protocol setting for this pool: - &#x60;v1&#x60;: Enabled with version 1 (human-readable header format) - &#x60;v2&#x60;: Enabled with version 2 (binary header format) - &#x60;disabled&#x60;: Disabled  Supported by load balancers in the &#x60;application&#x60; family (otherwise always &#x60;disabled&#x60;). | [optional] [default to &#39;disabled&#39;]
**session_persistence** | [**LoadBalancerPoolSessionPersistencePrototype**](LoadBalancerPoolSessionPersistencePrototype.md) |  | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::LoadBalancerPoolPrototype.new(algorithm: null,
                                 health_monitor: null,
                                 members: null,
                                 name: my-load-balancer-pool,
                                 protocol: null,
                                 proxy_protocol: null,
                                 session_persistence: null)
```


