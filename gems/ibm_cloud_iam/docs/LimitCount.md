# IbmCloudIam::LimitCount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Maximum allowed value for the resource |  |
| **count** | **Integer** | Current usage count for the resource | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::LimitCount.new(
  limit: null,
  count: null
)
```

