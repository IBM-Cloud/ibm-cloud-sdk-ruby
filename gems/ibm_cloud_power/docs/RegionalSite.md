# IbmCloudPower::RegionalSite

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of regional site | [optional] |
| **status** | **String** | Status of the regional site | [optional] |
| **storage_pools** | **Array&lt;String&gt;** | List of storage pools supporting zonal with regional snapshots | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::RegionalSite.new(
  name: null,
  status: null,
  storage_pools: null
)
```

