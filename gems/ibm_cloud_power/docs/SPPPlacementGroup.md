# IbmCloudPower::SPPPlacementGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the Shared Processor Pool Placement Group |  |
| **member_shared_processor_pools** | **Array&lt;String&gt;** | The list of Shared Processor Pool names that are a member of the Shared Processor Pool Placement Group | [optional] |
| **name** | **String** | The name of the Shared Processor Pool Placement Group |  |
| **policy** | **String** | The Shared Processor Pool Placement Group policy |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::SPPPlacementGroup.new(
  id: null,
  member_shared_processor_pools: null,
  name: null,
  policy: null
)
```

