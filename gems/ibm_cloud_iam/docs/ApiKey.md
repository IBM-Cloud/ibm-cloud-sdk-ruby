# IbmCloudIam::ApiKey

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **context** | [**ResponseContext**](ResponseContext.md) |  | [optional] |
| **id** | **String** | Unique identifier of this API Key. |  |
| **entity_tag** | **String** | Version of the API Key details object. You need to specify this value when updating the API key to avoid stale updates. | [optional] |
| **crn** | **String** | Cloud Resource Name of the item. Example Cloud Resource Name: &#39;crn:v1:bluemix:public:iam-identity:us-south:a/myaccount::apikey:1234-9012-5678&#39; |  |
| **locked** | **Boolean** | The API key cannot be changed if set to true. |  |
| **disabled** | **Boolean** | Defines if API key is disabled, API key cannot be used if &#39;disabled&#39; is set to true. | [optional] |
| **created_at** | **Time** | If set contains a date time string of the creation date in ISO format. | [optional] |
| **created_by** | **String** | IAM ID of the user or service which created the API key. |  |
| **modified_at** | **Time** | If set contains a date time string of the last modification date in ISO format. | [optional] |
| **name** | **String** | Name of the API key. The name is not checked for uniqueness. Therefore multiple names with the same value can exist. Access is done via the UUID of the API key. |  |
| **support_sessions** | **Boolean** | Defines whether you can manage CLI login sessions for the API key. When &#x60;true&#x60;, sessions are created and can be reviewed or revoked. When &#x60;false&#x60;, no sessions are tracked. To block access, delete or rotate the API key. Available only for user API keys. | [optional] |
| **action_when_leaked** | **String** | Defines the action to take when API key is leaked, valid values are &#39;none&#39;, &#39;disable&#39; and &#39;delete&#39;. | [optional] |
| **expires_at** | **String** | Date and time when the API key becomes invalid, ISO 8601 datetime in the format &#39;yyyy-MM-ddTHH:mm+0000&#39;. **WARNING** An API key will be permanently and irrevocably deleted when both the expires_at and modified_at timestamps are more than ninety (90) days in the past, regardless of the key’s locked status or any other state. | [optional] |
| **description** | **String** | The optional description of the API key. The &#39;description&#39; property is only available if a description was provided during a create of an API key. | [optional] |
| **iam_id** | **String** | The iam_id that this API key authenticates. |  |
| **account_id** | **String** | ID of the account that this API key authenticates for. |  |
| **apikey** | **String** | The API key value. This property only contains the API key value for the following cases: create an API key, update a service ID API key that stores the API key value as retrievable, or get a service ID API key that stores the API key value as retrievable. All other operations don&#39;t return the API key value, for example all user API key related operations, except for create, don&#39;t contain the API key value. |  |
| **history** | [**Array&lt;EnityHistoryRecord&gt;**](EnityHistoryRecord.md) | History of the API key. | [optional] |
| **activity** | [**Activity**](Activity.md) |  | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::ApiKey.new(
  context: null,
  id: null,
  entity_tag: null,
  crn: null,
  locked: null,
  disabled: null,
  created_at: null,
  created_by: null,
  modified_at: null,
  name: null,
  support_sessions: null,
  action_when_leaked: null,
  expires_at: null,
  description: null,
  iam_id: null,
  account_id: null,
  apikey: null,
  history: null,
  activity: null
)
```

