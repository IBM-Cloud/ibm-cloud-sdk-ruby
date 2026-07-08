# IbmCloudPower::UpdateServerVirtualSerialNumber

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Description of the Virtual Serial Number | [optional] |
| **software_tier** | [**SoftwareTier**](SoftwareTier.md) |  | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::UpdateServerVirtualSerialNumber.new(
  description: null,
  software_tier: null
)
```

