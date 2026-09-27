# IbmCloudPower::SPPPlacementGroupCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the shared processor pool placement group. |  |
| **policy** | **String** | The placement policy for the placement group. |  |
| **user_tags** | **Array&lt;String&gt;** | List of user tags | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::SPPPlacementGroupCreate.new(
  name: null,
  policy: null,
  user_tags: null
)
```

