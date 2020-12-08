# IbmCloudVpc::LoadBalancerPool

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**algorithm** | **String** | The load balancing algorithm. | 
**created_at** | **DateTime** | The date and time that this pool was created | 
**health_monitor** | [**LoadBalancerPoolHealthMonitor**](LoadBalancerPoolHealthMonitor.md) |  | 
**href** | **String** | The pool&#39;s canonical URL. | 
**id** | **String** | The unique identifier for this load balancer pool | 
**instance_group** | [**InstanceGroupReference**](InstanceGroupReference.md) |  | [optional] 
**members** | [**Array&lt;LoadBalancerPoolMemberReference&gt;**](LoadBalancerPoolMemberReference.md) | The backend server members of the pool | [optional] 
**name** | **String** | The user-defined name for this load balancer pool | 
**protocol** | **String** | The protocol used for this load balancer pool.  The enumerated values for this property are expected to expand in the future. When processing this property, check for and log unknown values. Optionally halt processing and surface the error, or bypass the pool on which the unexpected property value was encountered. | 
**provisioning_status** | **String** | The provisioning status of this pool | 
**proxy_protocol** | **String** | The PROXY protocol setting for this pool: - &#x60;v1&#x60;: Enabled with version 1 (human-readable header format) - &#x60;v2&#x60;: Enabled with version 2 (binary header format) - &#x60;disabled&#x60;: Disabled  Supported by load balancers in the &#x60;application&#x60; family (otherwise always &#x60;disabled&#x60;). | 
**session_persistence** | [**LoadBalancerPoolSessionPersistence**](LoadBalancerPoolSessionPersistence.md) |  | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::LoadBalancerPool.new(algorithm: null,
                                 created_at: null,
                                 health_monitor: null,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/load_balancers/dd754295-e9e0-4c9d-bf6c-58fbc59e5727/pools/70294e14-4e61-11e8-bcf4-0242ac110004,
                                 id: 70294e14-4e61-11e8-bcf4-0242ac110004,
                                 instance_group: null,
                                 members: null,
                                 name: my-load-balancer-pool,
                                 protocol: null,
                                 provisioning_status: null,
                                 proxy_protocol: null,
                                 session_persistence: null)
```


