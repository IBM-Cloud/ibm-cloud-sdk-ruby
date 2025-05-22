# IbmCloudPower::NetworkPortUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Description of the port (not unique or indexable) | [optional] |
| **pvm_instance_id** | **String** | If supplied populated it attaches to the PVMInstanceID, if empty detaches from PVMInstanceID | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::NetworkPortUpdate.new(
  description: null,
  pvm_instance_id: null
)
```

