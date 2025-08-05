# IbmCloudPower::VolumesDetach

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **detach_all_volumes** | **Boolean** | Indicates if all volumes, except primary boot volume, attached to the PVMInstance should be detached (default&#x3D;false); required if volumeIDs is not provided | [optional][default to false] |
| **detach_primary_boot_volume** | **Boolean** | Indicates if primary boot volume attached to the PVMInstance should be detached (default&#x3D;false) | [optional][default to false] |
| **volume_ids** | **Array&lt;String&gt;** | List of volumes to be detached from a PVM instance; required if detachAllVolumes is not provided | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::VolumesDetach.new(
  detach_all_volumes: null,
  detach_primary_boot_volume: null,
  volume_ids: null
)
```

