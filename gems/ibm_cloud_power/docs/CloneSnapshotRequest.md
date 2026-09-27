# IbmCloudPower::CloneSnapshotRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **clone_volume_naming_scheme** | [**CloneSnapshotRequestCloneVolumeNamingScheme**](CloneSnapshotRequestCloneVolumeNamingScheme.md) |  |  |
| **target_storage_tier** | **String** | Target storage tier for the cloned volumes. Use to clone a set of volumes from one storage tier to a different storage tier. Only valid for an in-place instance snapshot. | [optional] |
| **user_tags** | **Array&lt;String&gt;** | List of user tags | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::CloneSnapshotRequest.new(
  clone_volume_naming_scheme: null,
  target_storage_tier: null,
  user_tags: null
)
```

