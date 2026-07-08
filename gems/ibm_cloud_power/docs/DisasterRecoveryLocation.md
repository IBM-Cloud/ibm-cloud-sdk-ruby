# IbmCloudPower::DisasterRecoveryLocation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location** | **String** | regionZone of a site | [optional] |
| **replication_sites** | [**Array&lt;Site&gt;**](Site.md) | The list of replication sites has mapped for the given location | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::DisasterRecoveryLocation.new(
  location: null,
  replication_sites: null
)
```

