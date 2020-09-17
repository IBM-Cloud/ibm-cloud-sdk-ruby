# IbmCloudVpc::InstanceGroupPrototype

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**application_port** | **Integer** | Required if specifying a load balancer pool only. Used by the instance group when scaling up instances to supply the port for the load balancer pool member. | [optional] 
**instance_template** | [**InstanceTemplateIdentity**](InstanceTemplateIdentity.md) |  | 
**load_balancer** | [**LoadBalancerIdentity**](LoadBalancerIdentity.md) |  | [optional] 
**load_balancer_pool** | [**LoadBalancerPoolIdentity**](LoadBalancerPoolIdentity.md) |  | [optional] 
**membership_count** | **Integer** | The number of instances in the instance group | [optional] [default to 0]
**name** | **String** | The user-defined name for this instance group | [optional] 
**resource_group** | [**ResourceGroupIdentity**](ResourceGroupIdentity.md) |  | [optional] 
**subnets** | [**Array&lt;SubnetIdentity&gt;**](SubnetIdentity.md) | Array of identities to subnets to use when creating new instances | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::InstanceGroupPrototype.new(application_port: 22,
                                 instance_template: null,
                                 load_balancer: null,
                                 load_balancer_pool: null,
                                 membership_count: 10,
                                 name: my-instance-group,
                                 resource_group: null,
                                 subnets: null)
```


