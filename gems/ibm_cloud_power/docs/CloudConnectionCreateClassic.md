# IbmCloudPower::CloudConnectionCreateClassic

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | enable classic endpoint destination (default&#x3D;false) | [optional] |
| **gre** | [**CloudConnectionGRETunnelCreate**](CloudConnectionGRETunnelCreate.md) |  | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::CloudConnectionCreateClassic.new(
  enabled: null,
  gre: null
)
```

