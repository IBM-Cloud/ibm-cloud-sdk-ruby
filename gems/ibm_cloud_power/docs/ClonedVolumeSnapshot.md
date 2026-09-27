# IbmCloudPower::ClonedVolumeSnapshot

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **clone_crn** | **String** | CRN of the cloned volume PDS resource |  |
| **clone_id** | **String** | External UUID of the cloned volume PDS resource |  |
| **clone_name** | **String** | Name of the cloned volume PDS resource |  |
| **src_volume_crn** | **String** | CRN of the source volume to be cloned |  |
| **user_tags** | **Array&lt;String&gt;** | List of user tags | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::ClonedVolumeSnapshot.new(
  clone_crn: null,
  clone_id: null,
  clone_name: null,
  src_volume_crn: null,
  user_tags: null
)
```

