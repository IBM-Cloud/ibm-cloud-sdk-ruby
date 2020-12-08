# IbmCloudVpc::InstanceGroup

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**application_port** | **Integer** | Required if specifying a load balancer pool only. Used by the instance group when scaling up instances to supply the port for the load balancer pool member. | [optional] 
**created_at** | **DateTime** | The date and time that the instance group was created | 
**crn** | **String** | The CRN for this instance group | 
**href** | **String** | The URL for this instance group | 
**id** | **String** | The unique identifier for this instance group | 
**instance_template** | [**InstanceTemplateReference**](InstanceTemplateReference.md) |  | 
**load_balancer_pool** | [**LoadBalancerPoolReference**](LoadBalancerPoolReference.md) |  | [optional] 
**managers** | [**Array&lt;InstanceGroupManagerReference&gt;**](InstanceGroupManagerReference.md) | Array of references to managers for the instance group | 
**membership_count** | **Integer** | The number of instances in the instance group | [default to 0]
**name** | **String** | The user-defined name for this instance group | 
**resource_group** | [**ResourceGroupReference**](ResourceGroupReference.md) |  | 
**status** | **String** | The status of the instance group - &#x60;deleting&#x60;: Group is being deleted - &#x60;healthy&#x60;: Group has &#x60;membership_count&#x60; instances - &#x60;scaling&#x60;: Instances in the group are being created or deleted to reach              &#x60;membership_count&#x60; - &#x60;unhealthy&#x60;: Group is unable to reach &#x60;membership_count&#x60; instances | 
**subnets** | [**Array&lt;SubnetReference&gt;**](SubnetReference.md) | Array of references to subnets to use when creating new instances | 
**vpc** | [**VPCReference**](VPCReference.md) |  | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::InstanceGroup.new(application_port: 22,
                                 created_at: null,
                                 crn: crn:v1:bluemix:public:is:us-south-1:a/123456::instance-group:1e09281b-f177-46fb-baf1-bc152b2e391a,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/instance_groups/1e09281b-f177-46fb-baf1-bc152b2e391a,
                                 id: 1e09281b-f177-46fb-baf1-bc152b2e391a,
                                 instance_template: null,
                                 load_balancer_pool: null,
                                 managers: null,
                                 membership_count: 10,
                                 name: my-instance-group,
                                 resource_group: null,
                                 status: null,
                                 subnets: null,
                                 vpc: null)
```


