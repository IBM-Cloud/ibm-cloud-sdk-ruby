# IbmCloudPower::StatusDescriptionError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | Indicates the volume group error key | [optional] |
| **message** | **String** | Failure message providing more details about the error key | [optional] |
| **vol_ids** | **Array&lt;String&gt;** | List of volume IDs, which failed to be added/removed to/from the volume-group, with the given error. | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::StatusDescriptionError.new(
  key: null,
  message: null,
  vol_ids: null
)
```

