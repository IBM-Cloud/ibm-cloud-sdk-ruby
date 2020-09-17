# IbmCloudVpc::LoadBalancerPoolMember

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **DateTime** | The date and time that this member was created | 
**health** | **String** | Health of the server member in the pool. | 
**href** | **String** | The member&#39;s canonical URL. | 
**id** | **String** | The unique identifier for this load balancer pool member | 
**port** | **Integer** | The port number of the application running in the server member. | 
**provisioning_status** | **String** | The provisioning status of this member | 
**target** | [**LoadBalancerPoolMemberTarget**](LoadBalancerPoolMemberTarget.md) |  | 
**weight** | **Integer** | Weight of the server member. This takes effect only when the load balancing algorithm of its belonging pool is &#x60;weighted_round_robin&#x60;. | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::LoadBalancerPoolMember.new(created_at: null,
                                 health: null,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/load_balancers/dd754295-e9e0-4c9d-bf6c-58fbc59e5727/pools/70294e14-4e61-11e8-bcf4-0242ac110004/members/80294e14-4e61-11e8-bcf4-0242ac110004,
                                 id: 70294e14-4e61-11e8-bcf4-0242ac110004,
                                 port: 80,
                                 provisioning_status: null,
                                 target: null,
                                 weight: 50)
```


