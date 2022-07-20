# IbmCloudPower::MultiVolumesCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Base name of the volume(s) |  |
| **size** | **Integer** | Volume Size (GB) |  |
| **count** | **Integer** | Number of volumes to create | [optional] |
| **shareable** | **Boolean** | Indicates if the volume is shareable between VMs | [optional] |
| **disk_type** | **String** | Type of Disk; required if affinityPolicy is not provided, otherwise ignored | [optional] |
| **volume_pool** | **String** | Volume pool where the volume will be created; if provided then diskType and affinityPolicy values are ignored | [optional] |
| **affinity_policy** | **String** | Affinity policy for data volume being created; requires affinityPVMInstance or affinityVolume to be specified; | [optional] |
| **affinity_volume** | **String** | Volume (ID or Name) to base volume affinity policy against; required if affinityPolicy is provided and affinityPVMInstance is not provided | [optional] |
| **affinity_pvm_instance** | **String** | PVM Instance (ID or Name)to base volume affinity policy against; required if affinityPolicy is provided and affinityVolume is not provided | [optional] |
| **anti_affinity_volumes** | **Array&lt;String&gt;** | List of volumes to base storage anti-affinity policy against; required if requesting storage anti-affinity and storageAntiAffinityPVMInstances is not provided | [optional] |
| **anti_affinity_pvm_instances** | **Array&lt;String&gt;** | List of pvmInstances to base volume anti-affinity policy against; required if requesting anti-affinity and antiAffinityVolumes is not provided | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::MultiVolumesCreate.new(
  name: null,
  size: null,
  count: null,
  shareable: null,
  disk_type: null,
  volume_pool: null,
  affinity_policy: null,
  affinity_volume: null,
  affinity_pvm_instance: null,
  anti_affinity_volumes: null,
  anti_affinity_pvm_instances: null
)
```

