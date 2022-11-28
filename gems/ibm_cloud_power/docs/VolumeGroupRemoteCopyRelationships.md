# IbmCloudPower::VolumeGroupRemoteCopyRelationships

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the volume group | [optional] |
| **remote_copy_relationships** | [**Array&lt;RemoteCopyRelationship&gt;**](RemoteCopyRelationship.md) | List of remote copy relationships | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::VolumeGroupRemoteCopyRelationships.new(
  id: null,
  remote_copy_relationships: null
)
```

