# IbmCloudPower::PlacementGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the Placement Group |  |
| **members** | **Array&lt;String&gt;** | The List of PVM Instance IDs associated with the Placement Group |  |
| **name** | **String** | The name of the Placement Group |  |
| **policy** | **String** | The Placement Group Policy |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::PlacementGroup.new(
  id: null,
  members: null,
  name: null,
  policy: null
)
```

