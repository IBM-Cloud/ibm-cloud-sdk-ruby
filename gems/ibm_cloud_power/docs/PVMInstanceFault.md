# IbmCloudPower::PVMInstanceFault

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **Float** | The fault status of the server, if any | [optional] |
| **created** | **Time** | The date and time the fault occurred | [optional] |
| **details** | **String** | The fault details of the server, if any | [optional] |
| **message** | **String** | The fault message of the server, if any | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::PVMInstanceFault.new(
  code: null,
  created: null,
  details: null,
  message: null
)
```

