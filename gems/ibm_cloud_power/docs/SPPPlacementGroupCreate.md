# IbmCloudPower::SPPPlacementGroupCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the Shared Processor Pool Placement Group; minimum of 2 characters, maximum of 12, the only special character allowed is the underscore &#39;_&#39;. |  |
| **policy** | **String** | The placement group policy |  |
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

