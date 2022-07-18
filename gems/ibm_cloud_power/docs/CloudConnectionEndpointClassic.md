# IbmCloudPower::CloudConnectionEndpointClassic

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | enable classic endpoint destination (default&#x3D;false) | [optional] |
| **gre** | [**CloudConnectionEndpointGRE**](CloudConnectionEndpointGRE.md) |  | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::CloudConnectionEndpointClassic.new(
  enabled: null,
  gre: null
)
```

