# IbmCloudVpc::LoadBalancerPoolPatch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**algorithm** | **String** | The load balancing algorithm. | [optional] 
**health_monitor** | [**LoadBalancerPoolHealthMonitorPatch**](LoadBalancerPoolHealthMonitorPatch.md) |  | [optional] 
**name** | **String** | The user-defined name for this load balancer pool | [optional] 
**protocol** | **String** | The protocol used for this load balancer pool.  The enumerated values for this property are expected to expand in the future. When processing this property, check for and log unknown values. Optionally halt processing and surface the error, or bypass the pool on which the unexpected property value was encountered. | [optional] 
**session_persistence** | [**LoadBalancerPoolSessionPersistencePatch**](LoadBalancerPoolSessionPersistencePatch.md) |  | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::LoadBalancerPoolPatch.new(algorithm: null,
                                 health_monitor: null,
                                 name: my-load-balancer-pool,
                                 protocol: null,
                                 session_persistence: null)
```


