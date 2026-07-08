# IbmCloudIam::AccountSettingsUserDomainRestriction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **realm_id** | **String** | The realm that the restrictions apply to |  |
| **invitation_email_allow_patterns** | **Array&lt;String&gt;** | The list of allowed email patterns. Wildcard syntax is supported, &#39;*&#39; represents any sequence of zero or more characters in the string, except for &#39;.&#39; and &#39;@&#39;. The sequence ends if a &#39;.&#39; or &#39;@&#39; was found. &#39;**&#39; represents any sequence of zero or more characters in the string - without limit  | [optional] |
| **restrict_invitation** | **Boolean** | When true invites will only be possible to the domain patterns provided, otherwise invites are unrestricted | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::AccountSettingsUserDomainRestriction.new(
  realm_id: IBMid,
  invitation_email_allow_patterns: &quot;*.*@company.com&quot;,
  restrict_invitation: null
)
```

