# IbmCloudPower::CopyVolume

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **copy_volume_crn** | **String** | The CRN of the copy volume |  |
| **copy_volume_id** | **String** | The ID of the copy volume |  |
| **copy_volume_name** | **String** | The Name of the copy volume |  |
| **copy_volume_user_tags** | **Array&lt;String&gt;** | User tags associated with the copy volume | [optional] |
| **src_volume_crn** | **String** | The CRN of the source volume |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::CopyVolume.new(
  copy_volume_crn: null,
  copy_volume_id: null,
  copy_volume_name: null,
  copy_volume_user_tags: null,
  src_volume_crn: null
)
```

