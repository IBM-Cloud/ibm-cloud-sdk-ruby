# IbmCloudVpc::LoadBalancerListenerPolicyPatch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The user-defined name for this policy. Names must be unique within the load balancer listener the policy resides in. | [optional] 
**priority** | **Integer** | Priority of the policy. Lower value indicates higher priority. | [optional] 
**target** | [**LoadBalancerListenerPolicyTargetPatch**](LoadBalancerListenerPolicyTargetPatch.md) |  | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::LoadBalancerListenerPolicyPatch.new(name: my-policy,
                                 priority: 5,
                                 target: null)
```


