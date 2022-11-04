# IbmCloudPower::VolumeGroupCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **consistency_group_name** | **String** | The name of consistencyGroup at storage controller level. This is required to onboard existing volume group on the target site for DR set up; name and consistencyGroupName are mutually exclusive. | [optional] |
| **name** | **String** | The name of the volume group. This field is required for creation of new volume group; name and consistencyGroupName are mutually exclusive. | [optional] |
| **volume_ids** | **Array&lt;String&gt;** | List of volume IDs,members of VolumeGroup |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::VolumeGroupCreate.new(
  consistency_group_name: null,
  name: null,
  volume_ids: null
)
```

