# IbmCloudResourceController::ResourceKey

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The ID associated with the key. | [optional] 
**guid** | **String** | When you create a new key, a globally unique identifier (GUID) is assigned. This GUID is a unique internal identifier managed by the resource controller that corresponds to the key. | [optional] 
**crn** | **String** | The full Cloud Resource Name (CRN) associated with the key. For more information about this format, see [Cloud Resource Names](https://cloud.ibm.com/docs/overview?topic&#x3D;overview-crn). | [optional] 
**url** | **String** | When you created a new key, a relative URL path is created identifying the location of the key. | [optional] 
**name** | **String** | The human-readable name of the key. | [optional] 
**account_id** | **String** | An alpha-numeric value identifying the account ID. | [optional] 
**resource_group_id** | **String** | The short ID of the resource group. | [optional] 
**source_crn** | **String** | The CRN of resource instance or alias associated to the key. | [optional] 
**state** | **String** | The state of the key. | [optional] 
**credentials** | [**Credentials**](Credentials.md) | The credentials for the key. Additional key-value pairs are passed through from the resource brokers.  Refer to service’s documentation for additional details. | [optional] 
**iam_compatible** | **Boolean** | Specifies whether the key’s credentials support IAM. | [optional] 
**resource_instance_url** | **String** | The relative path to the resource. | [optional] 
**created_at** | **DateTime** | The date when the key was created. | [optional] 
**updated_at** | **DateTime** | The date when the key was last updated. | [optional] 
**deleted_at** | **DateTime** | The date when the key was deleted. | [optional] 

## Code Sample

```ruby
require 'IbmCloudResourceController'

instance = IbmCloudResourceController::ResourceKey.new(id: null,
                                 guid: null,
                                 crn: null,
                                 url: null,
                                 name: null,
                                 account_id: null,
                                 resource_group_id: null,
                                 source_crn: null,
                                 state: null,
                                 credentials: null,
                                 iam_compatible: null,
                                 resource_instance_url: null,
                                 created_at: null,
                                 updated_at: null,
                                 deleted_at: null)
```


