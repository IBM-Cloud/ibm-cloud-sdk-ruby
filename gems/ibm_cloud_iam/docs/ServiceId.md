# IbmCloudIam::ServiceId

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **context** | [**ResponseContext**](ResponseContext.md) |  | [optional] |
| **id** | **String** | Unique identifier of this Service Id. |  |
| **iam_id** | **String** | Cloud wide identifier for identities of this service ID. |  |
| **entity_tag** | **String** | Version of the service ID details object. You need to specify this value when updating the service ID to avoid stale updates. |  |
| **crn** | **String** | Cloud Resource Name of the item. Example Cloud Resource Name: &#39;crn:v1:bluemix:public:iam-identity:us-south:a/myaccount::serviceid:1234-5678-9012&#39; |  |
| **locked** | **Boolean** | The service ID cannot be changed if set to true. |  |
| **created_at** | **Time** | If set contains a date time string of the creation date in ISO format. |  |
| **modified_at** | **Time** | If set contains a date time string of the last modification date in ISO format. |  |
| **account_id** | **String** | ID of the account the service ID belongs to. |  |
| **group_id** | **String** | ID of the group to which the service ID belongs to. Only set if requested via parameter &#x60;show_group_id&#x60;. | [optional] |
| **name** | **String** | Name of the Service Id. The name is not checked for uniqueness. Therefore multiple names with the same value can exist. Access is done via the UUID of the Service Id. |  |
| **description** | **String** | The optional description of the Service Id. The &#39;description&#39; property is only available if a description was provided during a create of a Service Id. | [optional] |
| **unique_instance_crns** | **Array&lt;String&gt;** | Optional list of CRNs (string array) which point to the services connected to the service ID. | [optional] |
| **history** | [**Array&lt;EnityHistoryRecord&gt;**](EnityHistoryRecord.md) | History of the Service ID. | [optional] |
| **apikey** | [**ApiKey**](ApiKey.md) |  | [optional] |
| **activity** | [**Activity**](Activity.md) |  | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::ServiceId.new(
  context: null,
  id: null,
  iam_id: null,
  entity_tag: null,
  crn: null,
  locked: null,
  created_at: null,
  modified_at: null,
  account_id: null,
  group_id: null,
  name: null,
  description: null,
  unique_instance_crns: null,
  history: null,
  apikey: null,
  activity: null
)
```

