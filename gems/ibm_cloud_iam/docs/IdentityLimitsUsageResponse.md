# IbmCloudIam::IdentityLimitsUsageResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **serviceid_groups** | [**LimitCount**](LimitCount.md) |  | [optional] |
| **serviceids_per_group** | [**IdentityLimitsUsageResponseServiceidsPerGroup**](IdentityLimitsUsageResponseServiceidsPerGroup.md) |  | [optional] |
| **profiles** | [**LimitCount**](LimitCount.md) |  | [optional] |
| **apikeys_per_identity** | [**IdentityLimitsUsageResponseApikeysPerIdentity**](IdentityLimitsUsageResponseApikeysPerIdentity.md) |  | [optional] |
| **profile_templates** | [**LimitCount**](LimitCount.md) |  | [optional] |
| **account_settings_templates** | [**LimitCount**](LimitCount.md) |  | [optional] |
| **template_versions_per_template** | [**IdentityLimitsUsageResponseTemplateVersionsPerTemplate**](IdentityLimitsUsageResponseTemplateVersionsPerTemplate.md) |  | [optional] |
| **idps** | [**LimitCount**](LimitCount.md) |  | [optional] |
| **claim_rules_per_group** | [**IdentityLimitsUsageResponseClaimRulesPerGroup**](IdentityLimitsUsageResponseClaimRulesPerGroup.md) |  | [optional] |
| **claim_rules_per_profile** | [**IdentityLimitsUsageResponseClaimRulesPerProfile**](IdentityLimitsUsageResponseClaimRulesPerProfile.md) |  | [optional] |
| **cr_links** | [**LimitCount**](LimitCount.md) |  | [optional] |
| **cr_links_per_profile** | [**IdentityLimitsUsageResponseClaimRulesPerProfile**](IdentityLimitsUsageResponseClaimRulesPerProfile.md) |  | [optional] |
| **cr_rules** | [**LimitCount**](LimitCount.md) |  | [optional] |
| **cr_rules_per_profile** | [**IdentityLimitsUsageResponseClaimRulesPerProfile**](IdentityLimitsUsageResponseClaimRulesPerProfile.md) |  | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::IdentityLimitsUsageResponse.new(
  serviceid_groups: null,
  serviceids_per_group: null,
  profiles: null,
  apikeys_per_identity: null,
  profile_templates: null,
  account_settings_templates: null,
  template_versions_per_template: null,
  idps: null,
  claim_rules_per_group: null,
  claim_rules_per_profile: null,
  cr_links: null,
  cr_links_per_profile: null,
  cr_rules: null,
  cr_rules_per_profile: null
)
```

