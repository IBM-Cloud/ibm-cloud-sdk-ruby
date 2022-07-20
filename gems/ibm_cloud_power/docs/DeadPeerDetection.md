# IbmCloudPower::DeadPeerDetection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** | Action to take when a Peer Gateway stops responding |  |
| **interval** | **Integer** | How often to test that the Peer Gateway is responsive | [default to 10] |
| **threshold** | **Integer** | The number of attempts to connect before tearing down the connection | [default to 5] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::DeadPeerDetection.new(
  action: null,
  interval: 10,
  threshold: 5
)
```

