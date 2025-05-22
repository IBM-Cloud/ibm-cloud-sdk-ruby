# IbmCloudPower::ReplicationService

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Service Enabled |  |
| **target_locations** | [**Array&lt;ReplicationTargetLocation&gt;**](ReplicationTargetLocation.md) | List of all replication targets |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::ReplicationService.new(
  enabled: null,
  target_locations: null
)
```

