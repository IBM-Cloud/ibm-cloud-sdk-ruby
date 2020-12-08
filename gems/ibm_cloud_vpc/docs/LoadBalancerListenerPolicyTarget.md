# IbmCloudVpc::LoadBalancerListenerPolicyTarget

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**deleted** | [**Deleted**](Deleted.md) |  | [optional] 
**href** | **String** | The pool&#39;s canonical URL. | 
**id** | **String** | The unique identifier for this load balancer pool | 
**name** | **String** | The user-defined name for this load balancer pool | 
**http_status_code** | **Integer** | The http status code in the redirect response. | 
**url** | **String** | The redirect target URL. | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::LoadBalancerListenerPolicyTarget.new(deleted: null,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/load_balancers/dd754295-e9e0-4c9d-bf6c-58fbc59e5727/pools/70294e14-4e61-11e8-bcf4-0242ac110004,
                                 id: 70294e14-4e61-11e8-bcf4-0242ac110004,
                                 name: my-load-balancer-pool,
                                 http_status_code: null,
                                 url: https://www.redirect.com)
```


