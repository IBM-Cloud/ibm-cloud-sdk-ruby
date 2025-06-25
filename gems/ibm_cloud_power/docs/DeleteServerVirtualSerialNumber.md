# IbmCloudPower::DeleteServerVirtualSerialNumber

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **retain_vsn** | **Boolean** | Indicates if the Virtual Serial Number attached to a PVM Instance is retained or not | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::DeleteServerVirtualSerialNumber.new(
  retain_vsn: null
)
```

