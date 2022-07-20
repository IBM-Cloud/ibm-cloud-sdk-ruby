# IbmCloudPower::VolumesCloneResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloned_volumes** | **Hash&lt;String, String&gt;** | A map of volume IDs to cloned volume IDs | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::VolumesCloneResponse.new(
  cloned_volumes: null
)
```

