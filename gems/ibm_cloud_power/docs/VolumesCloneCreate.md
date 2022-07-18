# IbmCloudPower::VolumesCloneCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Unique name within a cloud instance used to identify a volumes-clone request name can be used in replace of a volumesCloneID when used as a URL path parameter  |  |
| **volume_ids** | **Array&lt;String&gt;** | List of volumes to be cloned |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::VolumesCloneCreate.new(
  name: null,
  volume_ids: null
)
```

