# IbmCloudPower::DisasterRecovery

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asynchronous_replication** | [**DisasterRecoveryAsynchronousReplication**](DisasterRecoveryAsynchronousReplication.md) |  |  |
| **synchronous_replication** | [**DisasterRecoverySynchronousReplication**](DisasterRecoverySynchronousReplication.md) |  | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::DisasterRecovery.new(
  asynchronous_replication: null,
  synchronous_replication: null
)
```

