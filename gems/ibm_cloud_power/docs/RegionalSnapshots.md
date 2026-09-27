# IbmCloudPower::RegionalSnapshots

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Regional snapshots enabled |  |
| **regional_sites** | [**Array&lt;RegionalSite&gt;**](RegionalSite.md) | List of paired regional sites and the associated storage pools |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::RegionalSnapshots.new(
  enabled: null,
  regional_sites: null
)
```

