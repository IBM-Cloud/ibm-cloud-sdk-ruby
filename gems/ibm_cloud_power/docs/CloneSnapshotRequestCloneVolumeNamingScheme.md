# IbmCloudPower::CloneSnapshotRequestCloneVolumeNamingScheme

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bulk_naming** | [**BulkNaming**](BulkNaming.md) | Bulk naming will consist of 4 parts. The 1st part will be the prefix \&quot;clone-\&quot;. The 2nd part will be the user supplied baseName. The 3rd part is an optional user selected suffix.  The 4th and final part will be a dash (-) plus an ascending sequence number, starting with 1. If the VOLUME-NAME is selected for the 2nd part baseName, then part 4 will only be added if the volume name will not be unique. | [optional] |
| **volume_naming** | [**Array&lt;VolumeNaming&gt;**](VolumeNaming.md) | A list of source to clone volume names | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::CloneSnapshotRequestCloneVolumeNamingScheme.new(
  bulk_naming: null,
  volume_naming: null
)
```

