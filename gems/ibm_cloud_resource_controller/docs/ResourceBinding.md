# IbmCloudResourceController::ResourceBinding

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The ID associated with the binding. | [optional] 
**guid** | **String** | When you create a new binding, a globally unique identifier (GUID) is assigned. This GUID is a unique internal identifier managed by the resource controller that corresponds to the binding. | [optional] 
**crn** | **String** | The full Cloud Resource Name (CRN) associated with the binding. For more information about this format, see [Cloud Resource Names](https://cloud.ibm.com/docs/overview?topic&#x3D;overview-crn). | [optional] 
**url** | **String** | When you provision a new binding, a relative URL path is created identifying the location of the binding. | [optional] 
**name** | **String** | The human-readable name of the binding. | [optional] 
**account_id** | **String** | An alpha-numeric value identifying the account ID. | [optional] 
**resource_group_id** | **String** | The short ID of the resource group. | [optional] 
**source_crn** | **String** | The CRN of resource alias associated to the binding. | [optional] 
**target_crn** | **String** | The CRN of target resource, e.g. application, in a specific environment. | [optional] 
**region_binding_id** | **String** | The short ID of the binding in specific targeted environment, e.g. &#x60;service_binding_id&#x60; in a given IBM Cloud environment. | [optional] 
**state** | **String** | The state of the binding. | [optional] 
**credentials** | [**Credentials**](Credentials.md) | The credentials for the binding. Additional key-value pairs are passed through from the resource brokers.  For additional details, see the service’s documentation. | [optional] 
**iam_compatible** | **Boolean** | Specifies whether the binding’s credentials support IAM. | [optional] 
**resource_alias_url** | **String** | The relative path to the resource alias that this binding is associated with. | [optional] 
**created_at** | **DateTime** | The date when the binding was created. | [optional] 
**updated_at** | **DateTime** | The date when the binding was last updated. | [optional] 
**deleted_at** | **DateTime** | The date when the binding was deleted. | [optional] 

## Code Sample

```ruby
require 'IbmCloudResourceController'

instance = IbmCloudResourceController::ResourceBinding.new(id: null,
                                 guid: null,
                                 crn: null,
                                 url: null,
                                 name: null,
                                 account_id: null,
                                 resource_group_id: null,
                                 source_crn: null,
                                 target_crn: null,
                                 region_binding_id: null,
                                 state: null,
                                 credentials: null,
                                 iam_compatible: null,
                                 resource_alias_url: null,
                                 created_at: null,
                                 updated_at: null,
                                 deleted_at: null)
```


