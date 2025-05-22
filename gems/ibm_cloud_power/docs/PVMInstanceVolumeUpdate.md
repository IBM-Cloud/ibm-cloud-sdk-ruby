# IbmCloudPower::PVMInstanceVolumeUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **delete_on_termination** | **Boolean** | Indicates if the volume should be deleted when the PVMInstance is terminated. |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::PVMInstanceVolumeUpdate.new(
  delete_on_termination: null
)
```

