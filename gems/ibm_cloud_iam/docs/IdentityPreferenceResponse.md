# IbmCloudIam::IdentityPreferenceResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service** | **String** | Service of the preference | [optional] |
| **id** | **String** | Unique ID of the preference | [optional] |
| **account_id** | **String** | Account ID of the preference, only present for scope &#39;account&#39; | [optional] |
| **scope** | **String** | Scope of the preference, &#39;global&#39; or &#39;account&#39; | [optional] |
| **value_string** | **String** | String value of the preference, only one value property is set, either &#39;value_string&#39; or &#39;value_list_of_strings&#39; is present. | [optional] |
| **value_list_of_strings** | **Array&lt;String&gt;** | List of values of the preference, only one value property is set, either &#39;value_string&#39; or &#39;value_list_of_strings&#39; is present. | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::IdentityPreferenceResponse.new(
  service: null,
  id: null,
  account_id: null,
  scope: null,
  value_string: null,
  value_list_of_strings: null
)
```

