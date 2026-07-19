# IbmCloudResourceController::ResourceInstance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID associated with the instance. | [optional] |
| **guid** | **String** | The GUID of the instance. | [optional] |
| **url** | **String** | When you provision a new resource, a relative URL path is created identifying the location of the instance. | [optional] |
| **created_at** | **Time** | The date when the instance was created. | [optional] |
| **updated_at** | **Time** | The date when the instance was last updated. | [optional] |
| **deleted_at** | **Time** | The date when the instance was deleted. | [optional] |
| **created_by** | **String** | The subject who created the instance. | [optional] |
| **updated_by** | **String** | The subject who updated the instance. | [optional] |
| **deleted_by** | **String** | The subject who deleted the instance. | [optional] |
| **scheduled_reclaim_at** | **Time** | The date when the instance was scheduled for reclamation. | [optional] |
| **restored_at** | **Time** | The date when the instance under reclamation was restored. | [optional] |
| **restored_by** | **String** | The subject who restored the instance back from reclamation. | [optional] |
| **scheduled_reclaim_by** | **String** | The subject who initiated the instance reclamation. | [optional] |
| **name** | **String** | The human-readable name of the instance. | [optional] |
| **region_id** | **String** | The deployment location where the instance was provisioned. | [optional] |
| **account_id** | **String** | An alpha-numeric value identifying the account ID. | [optional] |
| **reseller_channel_id** | **String** | The unique ID of the reseller channel where the instance was provisioned from. | [optional] |
| **resource_plan_id** | **String** | The unique ID of the plan associated with the offering. This value is provided by and stored in the global catalog. | [optional] |
| **resource_group_id** | **String** | The ID of the resource group. | [optional] |
| **resource_group_crn** | **String** | The CRN of the resource group. | [optional] |
| **target_crn** | **String** | The deployment CRN as defined in the global catalog where the instance is provisioned. | [optional] |
| **onetime_credentials** | **Boolean** | Whether newly created resource key credentials can be retrieved by using get resource key or get a list of all of the resource keys requests. | [optional] |
| **parameters** | **Hash&lt;String, Object&gt;** | The current configuration parameters of the instance from the previous operation. Any future operation on the instance may reset this these values. | [optional] |
| **allow_cleanup** | **Boolean** | A boolean that dictates if the resource instance should be deleted (cleaned up) during the processing of a region instance delete call. | [optional] |
| **crn** | **String** | The full Cloud Resource Name (CRN) associated with the instance. For more information about this format, see [Cloud Resource Names](https://cloud.ibm.com/docs/overview?topic&#x3D;overview-crn). | [optional] |
| **state** | **String** | The current state of the instance. For example, if the instance is deleted, it will return removed. | [optional] |
| **type** | **String** | The type of the instance, for example, &#x60;service_instance&#x60;. | [optional] |
| **sub_type** | **String** | The sub-type of instance, for example, &#x60;cfaas&#x60;. | [optional] |
| **resource_id** | **String** | The unique ID of the offering. This value is provided by and stored in the global catalog. | [optional] |
| **dashboard_url** | **String** | The resource-broker-provided URL to access administrative features of the instance. | [optional] |
| **last_operation** | [**LastOperation**](LastOperation.md) | The status of the last operation requested on the instance. | [optional] |
| **resource_keys_url** | **String** | The relative path to the resource keys for the instance. | [optional] |
| **plan_history** | [**Array&lt;PlanHistoryItem&gt;**](PlanHistoryItem.md) | The plan history of the instance. | [optional] |
| **migrated** | **Boolean** | A boolean that dictates if the resource instance was migrated from a previous CF instance. | [optional] |
| **extensions** | **Hash&lt;String, Object&gt;** | Additional instance properties, contributed by the service and/or platform, are represented as key-value pairs. | [optional] |
| **controlled_by** | **String** | The CRN of the resource that has control of the instance. | [optional] |
| **locked** | **Boolean** | A boolean that dictates if the resource instance is locked or not. | [optional] |
| **subscription_id** | **String** | The subscription ID associated with the instance. | [optional] |

## Example

```ruby
require 'ibm_cloud_resource_controller'

instance = IbmCloudResourceController::ResourceInstance.new(
  id: null,
  guid: null,
  url: null,
  created_at: null,
  updated_at: null,
  deleted_at: null,
  created_by: null,
  updated_by: null,
  deleted_by: null,
  scheduled_reclaim_at: null,
  restored_at: null,
  restored_by: null,
  scheduled_reclaim_by: null,
  name: null,
  region_id: null,
  account_id: null,
  reseller_channel_id: null,
  resource_plan_id: null,
  resource_group_id: null,
  resource_group_crn: null,
  target_crn: null,
  onetime_credentials: null,
  parameters: null,
  allow_cleanup: null,
  crn: null,
  state: null,
  type: null,
  sub_type: null,
  resource_id: null,
  dashboard_url: null,
  last_operation: null,
  resource_keys_url: null,
  plan_history: null,
  migrated: null,
  extensions: null,
  controlled_by: null,
  locked: null,
  subscription_id: null
)
```

