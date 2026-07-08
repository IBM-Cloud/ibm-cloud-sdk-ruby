# IbmCloudIam::UpdateApiKeyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the API key to update. If specified in the request the parameter must not be empty. The name is not checked for uniqueness. Failure to this will result in an Error condition. | [optional] |
| **description** | **String** | The description of the API key to update. If specified an empty description will clear the description of the API key. If a non empty value is provided the API key will be updated. | [optional] |
| **support_sessions** | **Boolean** | Defines whether you can manage CLI login sessions for the API key. When &#x60;true&#x60;, sessions are created and can be reviewed or revoked. When &#x60;false&#x60;, no sessions are tracked. To block access, delete or rotate the API key. Available only for user API keys. | [optional] |
| **action_when_leaked** | **String** | Defines the action to take when API key is leaked, valid values are &#39;none&#39;, &#39;disable&#39; and &#39;delete&#39;. | [optional] |
| **expires_at** | **String** | Date and time when the API key becomes invalid, ISO 8601 datetime in the format &#39;yyyy-MM-ddTHH:mm+0000&#39;. **WARNING** An API key will be permanently and irrevocably deleted when both the expires_at and modified_at timestamps are more than ninety (90) days in the past, regardless of the key’s locked status or any other state. | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::UpdateApiKeyRequest.new(
  name: null,
  description: null,
  support_sessions: null,
  action_when_leaked: null,
  expires_at: null
)
```

