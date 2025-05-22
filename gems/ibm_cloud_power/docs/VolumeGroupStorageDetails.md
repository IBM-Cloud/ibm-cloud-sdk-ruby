# IbmCloudPower::VolumeGroupStorageDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **consistency_group_name** | **String** | The name of consistency group at storage controller level |  |
| **cycle_period_seconds** | **Integer** | Indicates the minimum period in seconds between multiple cycles | [optional] |
| **cycling_mode** | **String** | Indicates the type of cycling mode used | [optional] |
| **num_ofvols** | **Integer** | Number of volumes in volume group | [optional] |
| **primary_role** | **String** | Indicates whether master/aux volume is playing the primary role | [optional] |
| **remote_copy_relationship_names** | **Array&lt;String&gt;** | List of remote-copy relationship names in a volume group | [optional] |
| **replication_type** | **String** | Type of replication(metro,global) | [optional] |
| **state** | **String** | Indicates the relationship state | [optional] |
| **sync** | **String** | Indicates whether the relationship is synchronized | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::VolumeGroupStorageDetails.new(
  consistency_group_name: null,
  cycle_period_seconds: null,
  cycling_mode: null,
  num_ofvols: null,
  primary_role: null,
  remote_copy_relationship_names: null,
  replication_type: null,
  state: null,
  sync: null
)
```

