# IbmCloudPower::CloudConnectionVpc

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | enable vpc for this cloud connection (default&#x3D;false) | [optional] |
| **vpcs** | [**Array&lt;CloudConnectionVPC&gt;**](CloudConnectionVPC.md) | vpc connections | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::CloudConnectionVpc.new(
  enabled: null,
  vpcs: null
)
```

