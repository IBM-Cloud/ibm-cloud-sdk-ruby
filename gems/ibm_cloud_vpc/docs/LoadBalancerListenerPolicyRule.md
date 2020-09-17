# IbmCloudVpc::LoadBalancerListenerPolicyRule

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**condition** | **String** | The condition of the rule. | 
**created_at** | **DateTime** | The date and time that this rule was created | 
**field** | **String** | HTTP header field. This is only applicable to \&quot;header\&quot; rule type. | [optional] 
**href** | **String** | The rule&#39;s canonical URL. | 
**id** | **String** | The rule&#39;s unique identifier. | 
**provisioning_status** | **String** | The provisioning status of this rule | 
**type** | **String** | The type of the rule. | 
**value** | **String** | Value to be matched for rule condition | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::LoadBalancerListenerPolicyRule.new(condition: null,
                                 created_at: null,
                                 field: MY-APP-HEADER,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/load_balancers/dd754295-e9e0-4c9d-bf6c-58fbc59e5727/listeners/70294e14-4e61-11e8-bcf4-0242ac110004/policies/f3187486-7b27-4c79-990c-47d33c0e2278/rules/873a84b0-84d6-49c6-8948-1fa527b25762,
                                 id: 70294e14-4e61-11e8-bcf4-0242ac110004,
                                 provisioning_status: null,
                                 type: null,
                                 value: null)
```


