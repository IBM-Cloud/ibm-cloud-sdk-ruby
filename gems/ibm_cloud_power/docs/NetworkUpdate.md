# IbmCloudPower::NetworkUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Replaces the current Network Name | [optional] |
| **gateway** | **String** | Replaces the current Gateway IP Address | [optional] |
| **dns_servers** | **Array&lt;String&gt;** | Replaces the current DNS Servers | [optional] |
| **ip_address_ranges** | [**Array&lt;IPAddressRange&gt;**](IPAddressRange.md) | Replaces the current IP Address Ranges | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::NetworkUpdate.new(
  name: null,
  gateway: null,
  dns_servers: null,
  ip_address_ranges: null
)
```

