# IbmCloudPower::ZonalSnapshots

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Zonal snapshots enabled |  |
| **storage_pools** | **Array&lt;String&gt;** | List of storage pools supporting zonal snapshots |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::ZonalSnapshots.new(
  enabled: null,
  storage_pools: null
)
```

