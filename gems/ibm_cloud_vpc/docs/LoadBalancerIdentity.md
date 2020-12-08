# IbmCloudVpc::LoadBalancerIdentity

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The unique identifier for this load balancer | 
**crn** | **String** | The load balancer&#39;s CRN | 
**href** | **String** | The load balancer&#39;s canonical URL. | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::LoadBalancerIdentity.new(id: dd754295-e9e0-4c9d-bf6c-58fbc59e5727,
                                 crn: crn:v1:bluemix:public:is:us-south:a/123456::load-balancer:dd754295-e9e0-4c9d-bf6c-58fbc59e5727,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/load_balancers/dd754295-e9e0-4c9d-bf6c-58fbc59e5727)
```


