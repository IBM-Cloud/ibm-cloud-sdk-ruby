# IbmCloudIam::UpdatePreferenceRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value_string** | **String** | contains a string value of the preference. only one value property is set, either &#39;value_string&#39; or &#39;value_list_of_strings&#39; is present. | [optional] |
| **value_list_of_strings** | **Array&lt;String&gt;** | contains a list of string values of the preference. only one value property is set, either &#39;value_string&#39; or &#39;value_list_of_strings&#39; is present. | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::UpdatePreferenceRequest.new(
  value_string: null,
  value_list_of_strings: null
)
```

