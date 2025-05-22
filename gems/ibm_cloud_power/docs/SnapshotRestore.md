# IbmCloudPower::SnapshotRestore

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **force** | **Boolean** | By default the VM must be shutoff during a snapshot restore, force set to true will relax the VM shutoff pre-condition. | [optional][default to false] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::SnapshotRestore.new(
  force: null
)
```

