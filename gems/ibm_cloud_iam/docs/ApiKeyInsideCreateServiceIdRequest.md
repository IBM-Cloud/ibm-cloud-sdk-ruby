# IbmCloudIam::ApiKeyInsideCreateServiceIdRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the API key. The name is not checked for uniqueness. Therefore multiple names with the same value can exist. Access is done via the UUID of the API key. |  |
| **description** | **String** | The optional description of the API key. The &#39;description&#39; property is only available if a description was provided during a create of an API key. | [optional] |
| **apikey** | **String** | You can optionally passthrough the API key value for this API key. If passed, a minimum length validation of 32 characters for that apiKey value is done, i.e. the value can contain any characters and can even be non-URL safe, but the minimum length requirement must be met. If omitted, the API key management will create an URL safe opaque API key value. The value of the API key is checked for uniqueness. Ensure enough variations when passing in this value. | [optional] |
| **store_value** | **Boolean** | Send true or false to set whether the API key value is retrievable in the future by using the Get details of an API key request. If you create an API key for a user, you must specify &#x60;false&#x60; or omit the value. We don&#39;t allow storing of API keys for users. | [optional] |
| **action_when_leaked** | **String** | Defines the action to take when API key is leaked, valid values are &#39;none&#39;, &#39;disable&#39; and &#39;delete&#39;. | [optional] |
| **expires_at** | **String** | Date and time when the API key becomes invalid, ISO 8601 datetime in the format &#39;yyyy-MM-ddTHH:mm+0000&#39;. **WARNING** An API key will be permanently and irrevocably deleted when both the expires_at and modified_at timestamps are more than ninety (90) days in the past, regardless of the key’s locked status or any other state. | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::ApiKeyInsideCreateServiceIdRequest.new(
  name: null,
  description: null,
  apikey: null,
  store_value: null,
  action_when_leaked: null,
  expires_at: null
)
```

