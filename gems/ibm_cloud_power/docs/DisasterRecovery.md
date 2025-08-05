# IbmCloudPower::DisasterRecovery

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asynchronous_replication** | [**ReplicationService**](ReplicationService.md) |  |  |
| **synchronous_replication** | [**ReplicationService**](ReplicationService.md) |  | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::DisasterRecovery.new(
  asynchronous_replication: null,
  synchronous_replication: null
)
```

