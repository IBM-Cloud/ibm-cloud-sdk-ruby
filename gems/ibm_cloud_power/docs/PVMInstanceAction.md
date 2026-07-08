# IbmCloudPower::PVMInstanceAction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** | Name of the action to take; can be &#39;dhcp-ip-sync&#39; (on-prem only), &#39;dumprestart&#39;, &#39;hard-reboot&#39;, &#39;immediate-shutdown&#39;, &#39;reset-state&#39;, &#39;soft-reboot&#39;, &#39;start&#39;, &#39;stop&#39; |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::PVMInstanceAction.new(
  action: null
)
```

