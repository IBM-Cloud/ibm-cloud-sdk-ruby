# IbmCloudPower::NetworkInterfaceUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_id** | **String** | If supplied populated it attaches to the InstanceID, if empty detaches from InstanceID | [optional] |
| **name** | **String** | Name of the Network Interface | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::NetworkInterfaceUpdate.new(
  instance_id: null,
  name: null
)
```

