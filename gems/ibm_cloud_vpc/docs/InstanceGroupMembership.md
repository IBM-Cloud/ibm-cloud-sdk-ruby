# IbmCloudVpc::InstanceGroupMembership

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**delete_instance_on_membership_delete** | **Boolean** | If set to true, when deleting the membership the instance will also be deleted | 
**href** | **String** | The URL for this instance group membership | 
**id** | **String** | The unique identifier for this instance group membership | 
**instance** | [**InstanceReference**](InstanceReference.md) |  | 
**instance_template** | [**InstanceTemplateReference**](InstanceTemplateReference.md) |  | 
**name** | **String** | The user-defined name for this instance group membership. Names must be unique within the instance group. | 
**pool_member** | [**LoadBalancerPoolMemberReference**](LoadBalancerPoolMemberReference.md) |  | [optional] 
**status** | **String** | The status of the instance group membership - &#x60;deleting&#x60;: Membership is deleting dependent resources - &#x60;failed&#x60;: Membership was unable to maintain dependent resources - &#x60;healthy&#x60;: Membership is active and serving in the group - &#x60;pending&#x60;: Membership is waiting for dependent resources - &#x60;unhealthy&#x60;: Membership has unhealthy dependent resources | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::InstanceGroupMembership.new(delete_instance_on_membership_delete: null,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/instance_groups/1e09281b-f177-46fb-baf1-bc152b2e391a/memberships/8b002d86-601f-11ea-898b-000c29475bed,
                                 id: 1e09281b-f177-46fb-baf1-bc152b2e391a,
                                 instance: null,
                                 instance_template: null,
                                 name: my-instance-group-membership,
                                 pool_member: null,
                                 status: null)
```


