# IbmCloudIam::TrustedProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **context** | [**ResponseContext**](ResponseContext.md) |  | [optional] |
| **id** | **String** | the unique identifier of the trusted profile. Example:&#39;Profile-94497d0d-2ac3-41bf-a993-a49d1b14627c&#39; |  |
| **entity_tag** | **String** | Version of the trusted profile details object. You need to specify this value when updating the trusted profile to avoid stale updates. |  |
| **crn** | **String** | Cloud Resource Name of the item. Example Cloud Resource Name: &#39;crn:v1:bluemix:public:iam-identity:us-south:a/myaccount::profile:Profile-94497d0d-2ac3-41bf-a993-a49d1b14627c&#39; |  |
| **name** | **String** | Name of the trusted profile. The name is checked for uniqueness. Therefore trusted profiles with the same names can not exist in the same account. |  |
| **description** | **String** | The optional description of the trusted profile. The &#39;description&#39; property is only available if a description was provided during a create of a trusted profile. | [optional] |
| **email** | **String** | The optional email of the trusted profile. The &#39;email&#39; property is only available if an email was provided during a create of a trusted profile. | [optional] |
| **created_at** | **Time** | If set contains a date time string of the creation date in ISO format. | [optional] |
| **modified_at** | **Time** | If set contains a date time string of the last modification date in ISO format. | [optional] |
| **iam_id** | **String** | The iam_id of this trusted profile. |  |
| **account_id** | **String** | ID of the account that this trusted profile belong to. |  |
| **template_id** | **String** | ID of the IAM template that was used to create an enterprise-managed trusted profile in your account. When returned, this indicates that the trusted profile is created from and managed by a template in the root enterprise account. | [optional] |
| **assignment_id** | **String** | ID of the assignment that was used to create an enterprise-managed trusted profile in your account. When returned, this indicates that the trusted profile is created from and managed by a template in the root enterprise account. | [optional] |
| **ims_account_id** | **Integer** | IMS acount ID of the trusted profile | [optional] |
| **ims_user_id** | **Integer** | IMS user ID of the trusted profile | [optional] |
| **history** | [**Array&lt;EnityHistoryRecord&gt;**](EnityHistoryRecord.md) | History of the trusted profile. | [optional] |
| **activity** | [**Activity**](Activity.md) |  | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::TrustedProfile.new(
  context: null,
  id: null,
  entity_tag: null,
  crn: null,
  name: null,
  description: null,
  email: null,
  created_at: null,
  modified_at: null,
  iam_id: null,
  account_id: null,
  template_id: null,
  assignment_id: null,
  ims_account_id: null,
  ims_user_id: null,
  history: null,
  activity: null
)
```

