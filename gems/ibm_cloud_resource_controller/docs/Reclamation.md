# IbmCloudResourceController::Reclamation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The ID associated with the reclamation. | [optional] 
**entity_id** | **String** | The short ID of the entity for the reclamation. | [optional] 
**entity_type_id** | **String** | The short ID of the entity type for the reclamation. | [optional] 
**entity_crn** | **String** | The full Cloud Resource Name (CRN) associated with the binding. For more information about this format, see [Cloud Resource Names](https://cloud.ibm.com/docs/overview?topic&#x3D;overview-crn). | [optional] 
**resource_instance_id** | **String** | The short ID of the resource instance. | [optional] 
**resource_group_id** | **String** | The short ID of the resource group. | [optional] 
**account_id** | **String** | An alpha-numeric value identifying the account ID. | [optional] 
**policy_id** | **String** | The short ID of policy for the reclamation. | [optional] 
**state** | **String** | The state of the reclamation. | [optional] 
**target_time** | **String** | The target time that the reclamation retention period end. | [optional] 
**custom_properties** | **Hash&lt;String, Object&gt;** | The custom properties of the reclamation. | [optional] 
**created_at** | **DateTime** | The date when the reclamation was created. | [optional] 
**created_by** | **String** | The subject who created the reclamation. | [optional] 
**updated_at** | **DateTime** | The date when the reclamation was last updated. | [optional] 
**updated_by** | **String** | The subject who updated the reclamation. | [optional] 

## Code Sample

```ruby
require 'IbmCloudResourceController'

instance = IbmCloudResourceController::Reclamation.new(id: null,
                                 entity_id: null,
                                 entity_type_id: null,
                                 entity_crn: null,
                                 resource_instance_id: null,
                                 resource_group_id: null,
                                 account_id: null,
                                 policy_id: null,
                                 state: null,
                                 target_time: null,
                                 custom_properties: null,
                                 created_at: null,
                                 created_by: null,
                                 updated_at: null,
                                 updated_by: null)
```


