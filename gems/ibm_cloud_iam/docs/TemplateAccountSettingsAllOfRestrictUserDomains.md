# IbmCloudIam::TemplateAccountSettingsAllOfRestrictUserDomains

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_sufficient** | **Boolean** |  | [optional] |
| **restrictions** | [**Array&lt;AccountSettingsUserDomainRestriction&gt;**](AccountSettingsUserDomainRestriction.md) | Defines if account invitations are restricted to specified domains. To remove an entry for a realm_id, perform an update (PUT) request with only the realm_id set. | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::TemplateAccountSettingsAllOfRestrictUserDomains.new(
  account_sufficient: null,
  restrictions: null
)
```

