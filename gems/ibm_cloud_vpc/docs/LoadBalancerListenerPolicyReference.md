# IbmCloudVpc::LoadBalancerListenerPolicyReference

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**deleted** | [**Deleted**](Deleted.md) |  | [optional] 
**href** | **String** | The listener policy&#39;s canonical URL. | 
**id** | **String** | The policy&#39;s unique identifier. | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::LoadBalancerListenerPolicyReference.new(deleted: null,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/load_balancers/dd754295-e9e0-4c9d-bf6c-58fbc59e5727/listeners/70294e14-4e61-11e8-bcf4-0242ac110004/policies/f3187486-7b27-4c79-990c-47d33c0e2278,
                                 id: 70294e14-4e61-11e8-bcf4-0242ac110004)
```


