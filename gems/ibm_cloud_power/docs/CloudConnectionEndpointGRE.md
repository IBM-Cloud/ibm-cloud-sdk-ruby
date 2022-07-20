# IbmCloudPower::CloudConnectionEndpointGRE

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | enable gre for this cloud connection (default&#x3D;false) | [optional] |
| **tunnels** | [**Array&lt;CloudConnectionGRETunnel&gt;**](CloudConnectionGRETunnel.md) | gre tunnels configured | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::CloudConnectionEndpointGRE.new(
  enabled: null,
  tunnels: null
)
```

