# IbmCloudPower::ReplicationTargetLocation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **region** | **String** | regionZone of replication site | [optional] |
| **status** | **String** | the replication site is active / down | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::ReplicationTargetLocation.new(
  region: null,
  status: null
)
```

