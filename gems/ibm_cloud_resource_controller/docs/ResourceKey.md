# IbmCloudResourceController::ResourceKey

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID associated with the key. | [optional] |
| **guid** | **String** | The GUID of the key. | [optional] |
| **url** | **String** | When you created a new key, a relative URL path is created identifying the location of the key. | [optional] |
| **created_at** | **Time** | The date when the key was created. | [optional] |
| **updated_at** | **Time** | The date when the key was last updated. | [optional] |
| **deleted_at** | **Time** | The date when the key was deleted. | [optional] |
| **created_by** | **String** | The subject who created the key. | [optional] |
| **updated_by** | **String** | The subject who updated the key. | [optional] |
| **deleted_by** | **String** | The subject who deleted the key. | [optional] |
| **source_crn** | **String** | The CRN of resource instance associated to the key. | [optional] |
| **name** | **String** | The human-readable name of the key. | [optional] |
| **crn** | **String** | The full Cloud Resource Name (CRN) associated with the key. For more information about this format, see [Cloud Resource Names](https://cloud.ibm.com/docs/overview?topic&#x3D;overview-crn). | [optional] |
| **state** | **String** | The state of the key. | [optional] |
| **account_id** | **String** | An alpha-numeric value identifying the account ID. | [optional] |
| **resource_group_id** | **String** | The ID of the resource group. | [optional] |
| **resource_id** | **String** | The unique ID of the offering. This value is provided by and stored in the global catalog. | [optional] |
| **onetime_credentials** | **Boolean** | Whether newly created resource key credentials can be retrieved by using get resource key or get a list of all of the resource keys requests. | [optional] |
| **credentials** | [**Credentials**](Credentials.md) | The credentials for the key. Additional key-value pairs are passed through from the resource brokers. After a credential is created for a service, it can be viewed at any time for users that need the API key value. However, all users must have the correct level of access to see the details of a credential that includes the API key value. For additional details, see [viewing a credential](https://cloud.ibm.com/docs/account?topic&#x3D;account-service_credentials&amp;interface&#x3D;ui#viewing-credentials-ui) or the service’s documentation. | [optional] |
| **iam_compatible** | **Boolean** | Specifies whether the key’s credentials support IAM. | [optional] |
| **migrated** | **Boolean** | A boolean that dictates if the key was migrated from a previous CF instance. | [optional] |
| **resource_instance_url** | **String** | The relative path to the resource. | [optional] |

## Example

```ruby
require 'ibm_cloud_resource_controller'

instance = IbmCloudResourceController::ResourceKey.new(
  id: null,
  guid: null,
  url: null,
  created_at: null,
  updated_at: null,
  deleted_at: null,
  created_by: null,
  updated_by: null,
  deleted_by: null,
  source_crn: null,
  name: null,
  crn: null,
  state: null,
  account_id: null,
  resource_group_id: null,
  resource_id: null,
  onetime_credentials: null,
  credentials: null,
  iam_compatible: null,
  migrated: null,
  resource_instance_url: null
)
```

