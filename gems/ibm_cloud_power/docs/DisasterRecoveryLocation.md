# IbmCloudPower::DisasterRecoveryLocation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location** | **String** | regionZone of a site | [optional] |
| **replication_sites** | [**Array&lt;Site&gt;**](Site.md) | list of Replication Sites | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::DisasterRecoveryLocation.new(
  location: null,
  replication_sites: null
)
```

