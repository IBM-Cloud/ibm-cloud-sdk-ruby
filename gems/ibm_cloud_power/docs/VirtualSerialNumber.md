# IbmCloudPower::VirtualSerialNumber

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Description of the Virtual Serial Number |  |
| **pvm_instance_id** | **String** | ID of the PVM Instance Virtual Serial Number is attached to. |  |
| **serial** | **String** | Virtual Serial Number assigned to the PVM Instance |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::VirtualSerialNumber.new(
  description: null,
  pvm_instance_id: null,
  serial: null
)
```

