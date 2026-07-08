# IbmCloudIam::ServiceIdGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the the service ID group |  |
| **entity_tag** | **String** | Version of the service ID group details object. You need to specify this value when updating the service ID group to avoid stale updates. | [optional] |
| **account_id** | **String** | ID of the account the service ID group belongs to. |  |
| **crn** | **String** | Cloud Resource Name of the item. |  |
| **name** | **String** | Name of the service ID group. Unique in the account. |  |
| **description** | **String** | Description of the service ID group. | [optional] |
| **created_at** | **String** | Timestamp of when the service ID group was created | [optional] |
| **created_by** | **String** | IAM ID of the user or service which created the Service Id group. |  |
| **modified_at** | **String** | Timestamp of when the service ID group was modified | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::ServiceIdGroup.new(
  id: null,
  entity_tag: null,
  account_id: null,
  crn: null,
  name: null,
  description: null,
  created_at: null,
  created_by: null,
  modified_at: null
)
```

