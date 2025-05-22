# IbmCloudPower::CreateServerVirtualSerialNumber

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Description of the Virtual Serial Number | [optional] |
| **serial** | **String** | Provide an existing reserved Virtual Serial Number or specify &#39;auto-assign&#39; for auto generated Virtual Serial Number. |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::CreateServerVirtualSerialNumber.new(
  description: null,
  serial: null
)
```

