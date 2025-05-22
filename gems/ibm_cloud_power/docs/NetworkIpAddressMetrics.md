# IbmCloudPower::NetworkIpAddressMetrics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **available** | **Float** | Number of available IP addresses |  |
| **total** | **Float** | Total number of all IP addresses in all ipAddressRanges |  |
| **used** | **Float** | Number of IP addresses currently in use |  |
| **utilization** | **Float** | Utilization of IP addresses in percent form (used / total) [0 - 100] |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::NetworkIpAddressMetrics.new(
  available: null,
  total: null,
  used: null,
  utilization: null
)
```

