# IbmCloudVpc::FlowLogCollector

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **Boolean** | Indicates whether this collector is active. | 
**auto_delete** | **Boolean** | If set to &#x60;true&#x60;, this flow log collector will be automatically deleted when the target is deleted. | 
**created_at** | **DateTime** | The date and time that the flow log collector was created | 
**crn** | **String** | The CRN for this flow log collector | 
**href** | **String** | The URL for this flow log collector | 
**id** | **String** | The unique identifier for this flow log collector | 
**lifecycle_state** | [**LifecycleState**](LifecycleState.md) |  | 
**name** | **String** | The unique user-defined name for this flow log collector. | 
**resource_group** | [**ResourceGroupReference**](ResourceGroupReference.md) |  | 
**storage_bucket** | [**CloudObjectStorageBucketReference**](CloudObjectStorageBucketReference.md) |  | 
**target** | [**OneOfNetworkInterfaceReferenceTargetContextInstanceReferenceSubnetReferenceVPCReference**](OneOfNetworkInterfaceReferenceTargetContextInstanceReferenceSubnetReferenceVPCReference.md) | The target this collector is collecting flow logs for. If the target is an instance, subnet, or VPC, flow logs will not be collected for any network interfaces within the target that are themselves the target of a more specific flow log collector. | 
**vpc** | [**VPCReference**](VPCReference.md) |  | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::FlowLogCollector.new(active: true,
                                 auto_delete: true,
                                 created_at: null,
                                 crn: crn:v1:bluemix:public:is:us-south:a/123456::flow-log-collector:39300233-9995-4806-89a5-3c1b6eb88689,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/flow_log_collectors/39300233-9995-4806-89a5-3c1b6eb88689,
                                 id: 39300233-9995-4806-89a5-3c1b6eb88689,
                                 lifecycle_state: null,
                                 name: my-flow-log-collector,
                                 resource_group: null,
                                 storage_bucket: null,
                                 target: null,
                                 vpc: null)
```


