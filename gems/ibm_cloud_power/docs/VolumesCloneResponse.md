# IbmCloudPower::VolumesCloneResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **additional_properties** | **String** | ID of the new cloned volume | [optional] |
| **cloned_volumes** | **Object** | A map of volume IDs to cloned volume IDs | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::VolumesCloneResponse.new(
  additional_properties: null,
  cloned_volumes: null
)
```

