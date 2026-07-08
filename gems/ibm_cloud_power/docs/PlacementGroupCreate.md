# IbmCloudPower::PlacementGroupCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the Placement Group |  |
| **policy** | **String** | The Placement Group Policy |  |
| **user_tags** | **Array&lt;String&gt;** | List of user tags | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::PlacementGroupCreate.new(
  name: null,
  policy: null,
  user_tags: null
)
```

