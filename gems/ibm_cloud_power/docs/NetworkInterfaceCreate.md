# IbmCloudPower::NetworkInterfaceCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ip_address** | **String** | The requested IP address of this Network Interface | [optional] |
| **name** | **String** | Name of the Network Interface | [optional] |
| **user_tags** | **Array&lt;String&gt;** | The user tags associated with this resource. | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::NetworkInterfaceCreate.new(
  ip_address: null,
  name: null,
  user_tags: null
)
```

