# IbmCloudVpc::LoadBalancerListenerPolicy

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**action** | **String** | The policy action. | 
**created_at** | **DateTime** | The date and time that this policy was created | 
**href** | **String** | The listener policy&#39;s canonical URL. | 
**id** | **String** | The policy&#39;s unique identifier. | 
**name** | **String** | The user-defined name for this policy | 
**priority** | **Integer** | Priority of the policy. Lower value indicates higher priority. | 
**provisioning_status** | **String** | The provisioning status of this policy | 
**rules** | [**Array&lt;LoadBalancerListenerPolicyRuleReference&gt;**](LoadBalancerListenerPolicyRuleReference.md) | The rules of this policy | 
**target** | [**LoadBalancerListenerPolicyTarget**](LoadBalancerListenerPolicyTarget.md) |  | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::LoadBalancerListenerPolicy.new(action: null,
                                 created_at: null,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/load_balancers/dd754295-e9e0-4c9d-bf6c-58fbc59e5727/listeners/70294e14-4e61-11e8-bcf4-0242ac110004/policies/f3187486-7b27-4c79-990c-47d33c0e2278,
                                 id: 70294e14-4e61-11e8-bcf4-0242ac110004,
                                 name: my-policy,
                                 priority: 5,
                                 provisioning_status: null,
                                 rules: null,
                                 target: null)
```


