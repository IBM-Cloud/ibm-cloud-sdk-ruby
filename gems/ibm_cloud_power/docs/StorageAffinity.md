# IbmCloudPower::StorageAffinity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **affinity_pvm_instance** | **String** | PVM Instance (ID or Name) to base storage affinity policy against; required if requesting storage affinity and affinityVolume is not provided | [optional] |
| **affinity_policy** | **String** | Affinity policy for storage pool selection; ignored if storagePool provided; for policy &#39;affinity&#39; requires one of affinityPVMInstance or affinityVolume to be specified; for policy &#39;anti-affinity&#39; requires one of antiAffinityPVMInstances or antiAffinityVolumes to be specified | [optional] |
| **affinity_volume** | **String** | Volume (ID or Name) to base storage affinity policy against; required if requesting storage affinity and AffinityPVMInstance is not provided | [optional] |
| **anti_affinity_pvm_instances** | **Array&lt;String&gt;** | List of pvmInstances to base storage anti-affinity policy against; required if requesting storage anti-affinity and AntiAffinityVolumes is not provided | [optional] |
| **anti_affinity_volumes** | **Array&lt;String&gt;** | List of volumes to base storage anti-affinity policy against; required if requesting storage anti-affinity and AntiAffinityPVMInstances is not provided | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::StorageAffinity.new(
  affinity_pvm_instance: null,
  affinity_policy: null,
  affinity_volume: null,
  anti_affinity_pvm_instances: null,
  anti_affinity_volumes: null
)
```

