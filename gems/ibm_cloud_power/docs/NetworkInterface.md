# IbmCloudPower::NetworkInterface

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **crn** | **String** | The Network Interface&#39;s crn |  |
| **id** | **String** | The unique Network Interface ID |  |
| **instance** | [**NetworkInterfaceInstance**](NetworkInterfaceInstance.md) |  | [optional] |
| **ip_address** | **String** | The ip address of this Network Interface |  |
| **mac_address** | **String** | The mac address of the Network Interface |  |
| **name** | **String** | Name of the Network Interface (not unique or indexable) |  |
| **network_security_group_id** | **String** | (deprecated - replaced by networkSecurityGroupIDs) ID of the Network Security Group the network interface will be added to | [optional] |
| **network_security_group_ids** | **Array&lt;String&gt;** | Network security groups that the network interface is a member of. | [optional] |
| **status** | **String** | The status of the network address group |  |
| **user_tags** | **Array&lt;String&gt;** | The user tags associated with this resource. | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::NetworkInterface.new(
  crn: null,
  id: null,
  instance: null,
  ip_address: null,
  mac_address: null,
  name: null,
  network_security_group_id: null,
  network_security_group_ids: null,
  status: null,
  user_tags: null
)
```

