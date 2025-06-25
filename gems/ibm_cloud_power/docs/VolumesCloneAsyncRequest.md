# IbmCloudPower::VolumesCloneAsyncRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Base name of the new cloned volume(s). Cloned Volume names will be prefixed with &#39;clone-&#39;     and suffixed with &#39;-#####&#39; (where ##### is a 5 digit random number) If multiple volumes cloned they will be further suffixed with an incremental number starting with 1.   Example volume names using name&#x3D;\&quot;volume-abcdef\&quot;     single volume clone will be named \&quot;clone-volume-abcdef-83081\&quot;     multi volume clone will be named \&quot;clone-volume-abcdef-73721-1\&quot;, \&quot;clone-volume-abcdef-73721-2\&quot;, ... For multiple volume clone, the provided name will be truncated to the first 20 characters.  |  |
| **target_replication_enabled** | **Boolean** | Cloned volume will be non replication enabled if it is set to false. By default, the replication property of the source volume will be used to determine the replication property of the cloned target volume. | [optional] |
| **target_storage_tier** | **String** | Target storage tier for the cloned volumes. Use to clone a set of volumes from one storage tier to a different storage tier. Cloned volumes must remain in the same storage pool as the source volumes.  | [optional] |
| **user_tags** | **Array** |  | [optional] |
| **volume_ids** | **Array&lt;String&gt;** | List of volumes to be cloned |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::VolumesCloneAsyncRequest.new(
  name: null,
  target_replication_enabled: null,
  target_storage_tier: null,
  user_tags: null,
  volume_ids: null
)
```

