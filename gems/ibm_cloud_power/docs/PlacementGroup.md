# IbmCloudPower::PlacementGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **crn** | **String** | The CRN for this resource | [optional] |
| **id** | **String** | The id of the Placement Group |  |
| **members** | **Array&lt;String&gt;** | The List of PVM Instance IDs associated with the Placement Group |  |
| **name** | **String** | The name of the Placement Group |  |
| **policy** | **String** | The Placement Group Policy |  |
| **user_tags** | **Array&lt;String&gt;** | List of user tags | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::PlacementGroup.new(
  crn: null,
  id: null,
  members: null,
  name: null,
  policy: null,
  user_tags: null
)
```

