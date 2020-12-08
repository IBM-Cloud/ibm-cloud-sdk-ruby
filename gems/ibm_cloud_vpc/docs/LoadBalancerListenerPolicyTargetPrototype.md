# IbmCloudVpc::LoadBalancerListenerPolicyTargetPrototype

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The unique identifier for this load balancer pool | 
**href** | **String** | The pool&#39;s canonical URL. | 
**http_status_code** | **Integer** | The http status code in the redirect response. | 
**url** | **String** | The redirect target URL. | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::LoadBalancerListenerPolicyTargetPrototype.new(id: 70294e14-4e61-11e8-bcf4-0242ac110004,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/load_balancers/dd754295-e9e0-4c9d-bf6c-58fbc59e5727/pools/70294e14-4e61-11e8-bcf4-0242ac110004,
                                 http_status_code: null,
                                 url: https://www.redirect.com)
```


