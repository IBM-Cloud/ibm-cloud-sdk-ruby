# IbmCloudPower::MultiVolumesCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **affinity_pvm_instance** | **String** | PVM Instance (ID or Name)to base volume affinity policy against; required if requesting affinity and affinityVolume is not provided | [optional] |
| **affinity_policy** | **String** | Affinity policy for data volume being created; ignored if volumePool provided; for policy &#39;affinity&#39; requires one of affinityPVMInstance or affinityVolume to be specified; for policy &#39;anti-affinity&#39; requires one of antiAffinityPVMInstances or antiAffinityVolumes to be specified | [optional] |
| **affinity_volume** | **String** | Volume (ID or Name) to base volume affinity policy against; required if requesting affinity and affinityPVMInstance is not provided | [optional] |
| **anti_affinity_pvm_instances** | **Array&lt;String&gt;** | List of pvmInstances to base volume anti-affinity policy against; required if requesting anti-affinity and antiAffinityVolumes is not provided | [optional] |
| **anti_affinity_volumes** | **Array&lt;String&gt;** | List of volumes to base volume anti-affinity policy against; required if requesting anti-affinity and antiAffinityPVMInstances is not provided | [optional] |
| **count** | **Integer** | Number of volumes to create | [optional] |
| **disk_type** | **String** | Type of Disk; if diskType is not provided the disk type will default to &#39;tier3&#39;. | [optional] |
| **name** | **String** | Base name of the volume(s) |  |
| **replication_enabled** | **Boolean** | Indicates if the volume should be replication enabled or not | [optional] |
| **shareable** | **Boolean** | Indicates if the volume is shareable between VMs | [optional] |
| **size** | **Integer** | Volume Size (GB) |  |
| **user_tags** | **Array** |  | [optional] |
| **volume_pool** | **String** | Volume pool where the volume will be created; if provided then affinityPolicy value will be ignored | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::MultiVolumesCreate.new(
  affinity_pvm_instance: null,
  affinity_policy: null,
  affinity_volume: null,
  anti_affinity_pvm_instances: null,
  anti_affinity_volumes: null,
  count: null,
  disk_type: null,
  name: null,
  replication_enabled: null,
  shareable: null,
  size: null,
  user_tags: null,
  volume_pool: null
)
```

