# IbmCloudVpc::LoadBalancerPoolPatch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**algorithm** | **String** | The load balancing algorithm. | [optional] 
**health_monitor** | [**LoadBalancerPoolHealthMonitorPatch**](LoadBalancerPoolHealthMonitorPatch.md) |  | [optional] 
**name** | **String** | The user-defined name for this load balancer pool | [optional] 
**protocol** | **String** | The protocol used for this load balancer pool.  The enumerated values for this property are expected to expand in the future. When processing this property, check for and log unknown values. Optionally halt processing and surface the error, or bypass the pool on which the unexpected property value was encountered. | [optional] 
**proxy_protocol** | **String** | The PROXY protocol setting for this pool: - &#x60;v1&#x60;: Enabled with version 1 (human-readable header format) - &#x60;v2&#x60;: Enabled with version 2 (binary header format) - &#x60;disabled&#x60;: Disabled  Supported by load balancers in the &#x60;application&#x60; family (otherwise always &#x60;disabled&#x60;). | [optional] 
**session_persistence** | [**LoadBalancerPoolSessionPersistencePatch**](LoadBalancerPoolSessionPersistencePatch.md) |  | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::LoadBalancerPoolPatch.new(algorithm: null,
                                 health_monitor: null,
                                 name: my-load-balancer-pool,
                                 protocol: null,
                                 proxy_protocol: null,
                                 session_persistence: null)
```


