# IbmCloudIam::TemplateAccountSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **restrict_create_service_id** | [**RetrictActions**](RetrictActions.md) |  | [optional][default to &#39;NOT_SET&#39;] |
| **restrict_create_platform_apikey** | [**RetrictActions**](RetrictActions.md) |  | [optional][default to &#39;NOT_SET&#39;] |
| **allowed_ip_addresses** | **String** | Defines the IP addresses and subnets from which IAM tokens can be created for the account. | [optional] |
| **mfa** | [**MfaOptions**](MfaOptions.md) |  | [optional] |
| **user_mfa** | [**Array&lt;UserMfa&gt;**](UserMfa.md) | List of users that are exempted from the MFA requirement of the account. | [optional] |
| **session_expiration_in_seconds** | **String** | Defines the session expiration in seconds for the account. Valid values:   * Any whole number between between &#39;900&#39; and &#39;86400&#39;   * NOT_SET - To unset account setting and use service default | [optional][default to &#39;86400&#39;] |
| **session_invalidation_in_seconds** | **String** | Defines the period of time in seconds in which a session will be invalidated due to inactivity. Valid values:   * Any whole number between &#39;900&#39; and &#39;7200&#39;   * NOT_SET - To unset account setting and use service default | [optional][default to &#39;7200&#39;] |
| **max_sessions_per_identity** | **String** | Defines the max allowed sessions per identity required by the account. Valid values:   * Any whole number greater than 0   * NOT_SET - To unset account setting and use service default | [optional] |
| **system_access_token_expiration_in_seconds** | **String** | Defines the access token expiration in seconds. Valid values:   * Any whole number between &#39;900&#39; and &#39;3600&#39;   * NOT_SET - To unset account setting and use service default | [optional][default to &#39;3600&#39;] |
| **system_refresh_token_expiration_in_seconds** | **String** | Defines the refresh token expiration in seconds. Valid values:   * Any whole number between &#39;900&#39; and &#39;259200&#39;   * NOT_SET - To unset account setting and use service default | [optional][default to &#39;259200&#39;] |
| **restrict_user_list_visibility** | [**UserVisbilityRetrictActionsForTemplate**](UserVisbilityRetrictActionsForTemplate.md) |  | [optional] |
| **restrict_user_domains** | [**TemplateAccountSettingsAllOfRestrictUserDomains**](TemplateAccountSettingsAllOfRestrictUserDomains.md) |  | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::TemplateAccountSettings.new(
  restrict_create_service_id: null,
  restrict_create_platform_apikey: null,
  allowed_ip_addresses: null,
  mfa: null,
  user_mfa: null,
  session_expiration_in_seconds: null,
  session_invalidation_in_seconds: null,
  max_sessions_per_identity: null,
  system_access_token_expiration_in_seconds: null,
  system_refresh_token_expiration_in_seconds: null,
  restrict_user_list_visibility: null,
  restrict_user_domains: null
)
```

