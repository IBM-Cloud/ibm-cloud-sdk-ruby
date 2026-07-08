# IbmCloudIam::IdentityLimitsUsageRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **serviceid_groups** | **Boolean** | Flag to include service ID groups usage | [optional] |
| **serviceids_per_group** | **Array&lt;String&gt;** | List of service ID group IDs to get usage for | [optional] |
| **profiles** | **Boolean** | Flag to include trusted profiles usage | [optional] |
| **apikeys_per_identity** | **Array&lt;String&gt;** | List of identity IDs to get API key usage for | [optional] |
| **templates** | **Boolean** | Flag to include templates usage | [optional] |
| **template_versions_per_template** | **Array&lt;String&gt;** | List of template IDs to get version usage for | [optional] |
| **idps** | **Boolean** | Flag to include identity providers usage | [optional] |
| **claim_rules_per_group** | **Array&lt;String&gt;** | List of access group IDs to get claim rules usage for | [optional] |
| **claim_rules_per_profile** | **Array&lt;String&gt;** | List of profile IDs to get claim rules usage for | [optional] |
| **cr_links** | **Boolean** | Flag to include compute resource links usage | [optional] |
| **cr_links_per_profile** | **Array&lt;String&gt;** | List of profile IDs to get compute resource links usage for | [optional] |
| **cr_rules** | **Boolean** | Flag to include compute resource rules usage | [optional] |
| **cr_rules_per_profile** | **Array&lt;String&gt;** | List of profile IDs to get compute resource rules usage for | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::IdentityLimitsUsageRequest.new(
  serviceid_groups: null,
  serviceids_per_group: null,
  profiles: null,
  apikeys_per_identity: null,
  templates: null,
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

