# IbmCloudVpc::LoadBalancerListenerPolicyPatch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The user-defined name for this policy. Names must be unique within the load balancer listener the policy resides in. | [optional] 
**priority** | **Integer** | Priority of the policy. Lower value indicates higher priority. | [optional] 
**target** | [**OneOfLoadBalancerPoolIdentityLoadBalancerListenerPolicyRedirectURLPatch**](OneOfLoadBalancerPoolIdentityLoadBalancerListenerPolicyRedirectURLPatch.md) | When &#x60;action&#x60; is &#x60;forward&#x60;, &#x60;LoadBalancerPoolIdentity&#x60; specifies which pool the load balancer forwards the traffic to. When &#x60;action&#x60; is &#x60;redirect&#x60;, &#x60;LoadBalancerListenerPolicyRedirectURLPatch&#x60; specifies the url and http status code used in the redirect response. | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::LoadBalancerListenerPolicyPatch.new(name: my-policy,
                                 priority: 5,
                                 target: null)
```


