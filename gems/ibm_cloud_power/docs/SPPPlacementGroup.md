# IbmCloudPower::SPPPlacementGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **crn** | **String** | The CRN for this resource | [optional] |
| **id** | **String** | The unique identifier of the shared processor pool placement group. |  |
| **member_shared_processor_pools** | **Array&lt;String&gt;** | The list of shared processor pool names that are members of this placement group. | [optional] |
| **name** | **String** | The name of the placement group. |  |
| **policy** | **String** | The placement policy of the placement group. |  |
| **user_tags** | **Array&lt;String&gt;** | List of user tags | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::SPPPlacementGroup.new(
  crn: null,
  id: null,
  member_shared_processor_pools: null,
  name: null,
  policy: null,
  user_tags: null
)
```

