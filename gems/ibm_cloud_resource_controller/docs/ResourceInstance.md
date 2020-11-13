# IbmCloudResourceController::ResourceInstance

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The ID associated with the instance. | [optional] 
**guid** | **String** | When you create a new resource, a globally unique identifier (GUID) is assigned. This GUID is a unique internal identifier managed by the resource controller that corresponds to the instance. | [optional] 
**crn** | **String** | The full Cloud Resource Name (CRN) associated with the instance. For more information about this format, see [Cloud Resource Names](https://cloud.ibm.com/docs/overview?topic&#x3D;overview-crn). | [optional] 
**url** | **String** | When you provision a new resource, a relative URL path is created identifying the location of the instance. | [optional] 
**name** | **String** | The human-readable name of the instance. | [optional] 
**account_id** | **String** | An alpha-numeric value identifying the account ID. | [optional] 
**resource_group_id** | **String** | The short ID of the resource group. | [optional] 
**resource_group_crn** | **String** | The long ID (full CRN) of the resource group. | [optional] 
**resource_id** | **String** | The unique ID of the offering. This value is provided by and stored in the global catalog. | [optional] 
**resource_plan_id** | **String** | The unique ID of the plan associated with the offering. This value is provided by and stored in the global catalog. | [optional] 
**target_crn** | **String** | The full deployment CRN as defined in the global catalog. The Cloud Resource Name (CRN) of the deployment location where the instance is provisioned. | [optional] 
**parameters** | **Hash&lt;String, Object&gt;** | The current configuration parameters of the instance. | [optional] 
**state** | **String** | The current state of the instance. For example, if the instance is deleted, it will return removed. | [optional] 
**type** | **String** | The type of the instance, e.g. &#x60;service_instance&#x60;. | [optional] 
**sub_type** | **String** | The sub-type of instance, e.g. &#x60;cfaas&#x60;. | [optional] 
**allow_cleanup** | **Boolean** | A boolean that dictates if the resource instance should be deleted (cleaned up) during the processing of a region instance delete call. | [optional] 
**locked** | **Boolean** | A boolean that dictates if the resource instance is locked or not. | [optional] 
**last_operation** | **Hash&lt;String, Object&gt;** | The status of the last operation requested on the instance. | [optional] 
**dashboard_url** | **String** | The resource-broker-provided URL to access administrative features of the instance. | [optional] 
**plan_history** | [**Array&lt;PlanHistoryItem&gt;**](PlanHistoryItem.md) | The plan history of the instance. | [optional] 
**resource_aliases_url** | **String** | The relative path to the resource aliases for the instance. | [optional] 
**resource_bindings_url** | **String** | The relative path to the resource bindings for the instance. | [optional] 
**resource_keys_url** | **String** | The relative path to the resource keys for the instance. | [optional] 
**created_at** | **DateTime** | The date when the instance was created. | [optional] 
**created_by** | **String** | The subject who created the instance. | [optional] 
**updated_at** | **DateTime** | The date when the instance was last updated. | [optional] 
**updated_by** | **String** | The subject who updated the instance. | [optional] 
**deleted_at** | **DateTime** | The date when the instance was deleted. | [optional] 
**deleted_by** | **String** | The subject who deleted the instance. | [optional] 
**scheduled_reclaim_at** | **DateTime** | The date when the instance was scheduled for reclamation. | [optional] 
**scheduled_reclaim_by** | **String** | The subject who initiated the instance reclamation. | [optional] 
**restored_at** | **DateTime** | The date when the instance under reclamation was restored. | [optional] 
**restored_by** | **String** | The subject who restored the instance back from reclamation. | [optional] 

## Code Sample

```ruby
require 'IbmCloudResourceController'

instance = IbmCloudResourceController::ResourceInstance.new(id: null,
                                 guid: null,
                                 crn: null,
                                 url: null,
                                 name: null,
                                 account_id: null,
                                 resource_group_id: null,
                                 resource_group_crn: null,
                                 resource_id: null,
                                 resource_plan_id: null,
                                 target_crn: null,
                                 parameters: null,
                                 state: null,
                                 type: null,
                                 sub_type: null,
                                 allow_cleanup: null,
                                 locked: null,
                                 last_operation: null,
                                 dashboard_url: null,
                                 plan_history: null,
                                 resource_aliases_url: null,
                                 resource_bindings_url: null,
                                 resource_keys_url: null,
                                 created_at: null,
                                 created_by: null,
                                 updated_at: null,
                                 updated_by: null,
                                 deleted_at: null,
                                 deleted_by: null,
                                 scheduled_reclaim_at: null,
                                 scheduled_reclaim_by: null,
                                 restored_at: null,
                                 restored_by: null)
```


