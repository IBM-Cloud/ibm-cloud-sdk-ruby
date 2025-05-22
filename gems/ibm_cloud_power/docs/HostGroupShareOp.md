# IbmCloudPower::HostGroupShareOp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add** | [**Array&lt;Secondary&gt;**](Secondary.md) | List of workspaces to share the host group with | [optional] |
| **remove** | **String** | A workspace ID to stop sharing the host group with | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::HostGroupShareOp.new(
  add: null,
  remove: null
)
```

