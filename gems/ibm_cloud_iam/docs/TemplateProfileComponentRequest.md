# IbmCloudIam::TemplateProfileComponentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the Profile.  You can use replacement variables in the profile name to adjust the name per account.   The following variables are supported:  - &#x60;${template_id}&#x60; will be replaced by a unique identifier representing the trusted profile template  - &#x60;${template_name}&#x60; will be replaced by the current name of the trusted profile template  - &#x60;${template_version}&#x60; will be replaced by the current version of the trusted profile template  - &#x60;${account_id}&#x60; will be replaced by the account identifier to which this trusted profile template is assigned to  - &#x60;${account_name}&#x60; will be replaced by the account name to which this trusted profile template is assigned to  Changes to e.g. the name of the account will NOT cause an update of the trusted profile name. The profile name is  processed during account assignment and any template version upgrade, i.e. during that operation, the updated account name would be used.  |  |
| **description** | **String** | Description of the Profile | [optional] |
| **email** | **String** | Email of the trusted profile | [optional] |
| **rules** | [**Array&lt;TrustedProfileTemplateClaimRule&gt;**](TrustedProfileTemplateClaimRule.md) | Rules for the Profile | [optional] |
| **identities** | [**Array&lt;ProfileIdentityRequest&gt;**](ProfileIdentityRequest.md) | Identities for the Profile | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::TemplateProfileComponentRequest.new(
  name: null,
  description: null,
  email: null,
  rules: null,
  identities: null
)
```

