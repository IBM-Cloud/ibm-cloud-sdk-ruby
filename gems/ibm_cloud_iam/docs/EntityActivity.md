# IbmCloudIam::EntityActivity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique id of the entity |  |
| **name** | **String** | Name provided during creation of the entity. | [optional] |
| **last_authn** | **String** | Time when the entity was last authenticated. | [optional] |

## Example

```ruby
require 'ibm_cloud_iam'

instance = IbmCloudIam::EntityActivity.new(
  id: null,
  name: null,
  last_authn: null
)
```

