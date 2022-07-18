# IbmCloudPower::CreateDataVolume

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **disk_type** | **String** | Type of disk, required if affinityPolicy is not provided, otherwise ignored. | [optional] |
| **volume_pool** | **String** | Volume pool where the volume will be created; if provided then diskType and affinityPolicy values are ignored. | [optional] |
| **name** | **String** | Volume Name |  |
| **size** | **Float** | Volume Size (GB) |  |
| **shareable** | **Boolean** | Indicates if the volume is shareable between VMs | [optional] |
| **affinity_policy** | **String** | Affinity policy for data volume being created; ignored if volumePool provided. For policy &#39;affinity&#39;; requires one of affinityPVMInstance or affinityVolume to be specified. For policy &#39;anti-affinity&#39;; requires one of antiAffinityPVMInstances or antiAffinityVolumes to be specified. | [optional] |
| **affinity_volume** | **String** | Volume (ID or Name) to base volume affinity policy against; required if affinityPolicy is provided and affinityPVMInstance is not provided | [optional] |
| **affinity_pvm_instance** | **String** | PVM Instance (ID or Name) to base volume affinity policy against; required if affinityPolicy is provided and affinityVolume is not provided | [optional] |
| **anti_affinity_volumes** | **Array&lt;String&gt;** | List of volumes to base volume anti-affinity policy against; required if requesting anti-affinity and storageAntiAffinityPVMInstances is not provided | [optional] |
| **anti_affinity_pvm_instances** | **Array&lt;String&gt;** | List of pvmInstances to base volume anti-affinity policy against; required if requesting anti-affinity and antiAffinityVolumes is not provided | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::CreateDataVolume.new(
  disk_type: null,
  volume_pool: null,
  name: null,
  size: null,
  shareable: null,
  affinity_policy: null,
  affinity_volume: null,
  affinity_pvm_instance: null,
  anti_affinity_volumes: null,
  anti_affinity_pvm_instances: null
)
```

