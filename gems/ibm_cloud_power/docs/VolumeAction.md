# IbmCloudPower::VolumeAction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **replication_enabled** | **Boolean** | Indicates if the volume should be replication enabled or not | [optional] |
| **target_storage_tier** | **String** | Target storage tier; used to change a volume&#39;s storage tier | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::VolumeAction.new(
  replication_enabled: null,
  target_storage_tier: null
)
```

