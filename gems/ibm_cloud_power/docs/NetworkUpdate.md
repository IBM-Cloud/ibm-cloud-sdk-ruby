# IbmCloudPower::NetworkUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dns_servers** | **Array&lt;String&gt;** | Replaces the current DNS Servers | [optional] |
| **gateway** | **String** | Replaces the current Gateway IP Address | [optional] |
| **ip_address_ranges** | [**Array&lt;IPAddressRange&gt;**](IPAddressRange.md) | Replaces the current IP Address Ranges | [optional] |
| **name** | **String** | Replaces the current Network Name | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::NetworkUpdate.new(
  dns_servers: null,
  gateway: null,
  ip_address_ranges: null,
  name: null
)
```

