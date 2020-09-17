# IbmCloudVpc::LoadBalancerListenerPolicyPrototype

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**action** | **String** | The policy action. | 
**name** | **String** | The user-defined name for this policy. Names must be unique within the load balancer listener the policy resides in. | [optional] 
**priority** | **Integer** | Priority of the policy. Lower value indicates higher priority. | 
**rules** | [**Array&lt;LoadBalancerListenerPolicyRulePrototype&gt;**](LoadBalancerListenerPolicyRulePrototype.md) | The list of rules of this policy | [optional] 
**target** | [**OneOfLoadBalancerPoolIdentityLoadBalancerListenerPolicyRedirectURLPrototype**](OneOfLoadBalancerPoolIdentityLoadBalancerListenerPolicyRedirectURLPrototype.md) | When &#x60;action&#x60; is &#x60;forward&#x60;, &#x60;LoadBalancerPoolIdentity&#x60; is required to specify which pool the load balancer forwards the traffic to. When &#x60;action&#x60; is &#x60;redirect&#x60;, &#x60;LoadBalancerListenerPolicyRedirectURLPrototype&#x60; is required to specify the url and http status code used in the redirect response. | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::LoadBalancerListenerPolicyPrototype.new(action: null,
                                 name: my-policy,
                                 priority: 5,
                                 rules: null,
                                 target: null)
```


