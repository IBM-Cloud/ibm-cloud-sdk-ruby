# IbmCloudResourceController::ResourceAlias

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The ID associated with the alias. | [optional] 
**guid** | **String** | When you create a new alias, a globally unique identifier (GUID) is assigned. This GUID is a unique internal indentifier managed by the resource controller that corresponds to the alias. | [optional] 
**crn** | **String** | The full Cloud Resource Name (CRN) associated with the alias. For more information about this format, see [Cloud Resource Names](https://cloud.ibm.com/docs/overview?topic&#x3D;overview-crn). | [optional] 
**url** | **String** | When you created a new alias, a relative URL path is created identifying the location of the alias. | [optional] 
**name** | **String** | The human-readable name of the alias. | [optional] 
**account_id** | **String** | An alpha-numeric value identifying the account ID. | [optional] 
**resource_group_id** | **String** | The short ID of the resource group. | [optional] 
**resource_group_crn** | **String** | The long ID (full CRN) of the resource group. | [optional] 
**target_crn** | **String** | The CRN of the target namespace in the specific environment. | [optional] 
**state** | **String** | The state of the alias. | [optional] 
**resource_instance_id** | **String** | The short ID of the resource instance that is being aliased. | [optional] 
**region_instance_id** | **String** | The short ID of the instance in the specific target environment, e.g. &#x60;service_instance_id&#x60; in a given IBM Cloud environment. | [optional] 
**resource_instance_url** | **String** | The relative path to the instance. | [optional] 
**resource_bindings_url** | **String** | The relative path to the resource bindings for the alias. | [optional] 
**resource_keys_url** | **String** | The relative path to the resource keys for the alias. | [optional] 
**created_at** | **DateTime** | The date when the alias was created. | [optional] 
**updated_at** | **DateTime** | The date when the alias was last updated. | [optional] 
**deleted_at** | **DateTime** | The date when the alias was deleted. | [optional] 

## Code Sample

```ruby
require 'IbmCloudResourceController'

instance = IbmCloudResourceController::ResourceAlias.new(id: null,
                                 guid: null,
                                 crn: null,
                                 url: null,
                                 name: null,
                                 account_id: null,
                                 resource_group_id: null,
                                 resource_group_crn: null,
                                 target_crn: null,
                                 state: null,
                                 resource_instance_id: null,
                                 region_instance_id: null,
                                 resource_instance_url: null,
                                 resource_bindings_url: null,
                                 resource_keys_url: null,
                                 created_at: null,
                                 updated_at: null,
                                 deleted_at: null)
```


