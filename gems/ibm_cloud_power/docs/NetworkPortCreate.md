# IbmCloudPower::NetworkPortCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Description of the port (not unique or indexable) | [optional] |
| **ip_address** | **String** | The requested ip address of this port | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::NetworkPortCreate.new(
  description: null,
  ip_address: null
)
```

