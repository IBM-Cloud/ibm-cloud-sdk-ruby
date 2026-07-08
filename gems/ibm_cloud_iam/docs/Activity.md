# IbmCloudIam::Activity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_authn** | **String** | Time when the entity was last authenticated. | [optional] |
| **authn_count** | **Integer** | Authentication count, number of times the entity was authenticated. |  |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::Activity.new(
  last_authn: null,
  authn_count: null
)
```

