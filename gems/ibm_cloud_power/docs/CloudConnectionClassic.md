# IbmCloudPower::CloudConnectionClassic

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | enable classic endpoint destination (default&#x3D;false) | [optional] |
| **gre** | [**CloudConnectionGRETunnel**](CloudConnectionGRETunnel.md) |  | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::CloudConnectionClassic.new(
  enabled: null,
  gre: null
)
```

