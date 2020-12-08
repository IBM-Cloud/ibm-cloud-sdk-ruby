# IbmCloudVpc::LoadBalancer

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **DateTime** | The date and time that this load balancer was created | 
**crn** | **String** | The load balancer&#39;s CRN | 
**hostname** | **String** | Fully qualified domain name assigned to this load balancer | 
**href** | **String** | The load balancer&#39;s canonical URL. | 
**id** | **String** | The unique identifier for this load balancer | 
**is_public** | **Boolean** | The type of this load balancer, public or private | 
**listeners** | [**Array&lt;LoadBalancerListenerReference&gt;**](LoadBalancerListenerReference.md) | The listeners of this load balancer | 
**logging** | [**LoadBalancerLogging**](LoadBalancerLogging.md) |  | 
**name** | **String** | The unique user-defined name for this load balancer | 
**operating_status** | **String** | The operating status of this load balancer | 
**pools** | [**Array&lt;LoadBalancerPoolReference&gt;**](LoadBalancerPoolReference.md) | The pools of this load balancer | 
**private_ips** | [**Array&lt;IP&gt;**](IP.md) | The private IP addresses assigned to this load balancer. | 
**profile** | [**LoadBalancerProfileReference**](LoadBalancerProfileReference.md) |  | 
**provisioning_status** | **String** | The provisioning status of this load balancer | 
**public_ips** | [**Array&lt;IP&gt;**](IP.md) | The public IP addresses assigned to this load balancer. Applicable only for public load balancers. | 
**resource_group** | [**ResourceGroupReference**](ResourceGroupReference.md) |  | 
**subnets** | [**Array&lt;SubnetReference&gt;**](SubnetReference.md) | The subnets this load balancer is part of. | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::LoadBalancer.new(created_at: null,
                                 crn: crn:v1:bluemix:public:is:us-south:a/123456::load-balancer:dd754295-e9e0-4c9d-bf6c-58fbc59e5727,
                                 hostname: my-load-balancer-123456-us-south-1.lb.bluemix.net,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/load_balancers/dd754295-e9e0-4c9d-bf6c-58fbc59e5727,
                                 id: dd754295-e9e0-4c9d-bf6c-58fbc59e5727,
                                 is_public: true,
                                 listeners: null,
                                 logging: null,
                                 name: my-load-balancer,
                                 operating_status: null,
                                 pools: null,
                                 private_ips: null,
                                 profile: null,
                                 provisioning_status: null,
                                 public_ips: null,
                                 resource_group: null,
                                 subnets: null)
```


