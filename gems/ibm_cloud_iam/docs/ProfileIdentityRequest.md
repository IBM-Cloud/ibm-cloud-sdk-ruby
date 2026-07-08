# IbmCloudIam::ProfileIdentityRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | **String** | Identifier of the identity that can assume the trusted profiles. This can be a user identifier (IAM id), serviceid or crn. Internally it uses account id of the service id for the identifier &#39;serviceid&#39; and for the identifier &#39;crn&#39; it uses account id contained in the CRN. |  |
| **type** | **String** | Type of the identity |  |
| **accounts** | **Array&lt;String&gt;** | Only valid for the type user. Accounts from which a user can assume the trusted profile. | [optional] |
| **description** | **String** | Description of the identity that can assume the trusted profile. This is optional field for all the types of identities. When this field is not set for the identity type &#39;serviceid&#39; then the description of the service id is used. Description is recommended for the identity type &#39;crn&#39; E.g. &#39;Instance 1234 of IBM Cloud Service project&#39; | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::ProfileIdentityRequest.new(
  identifier: null,
  type: null,
  accounts: null,
  description: null
)
```

