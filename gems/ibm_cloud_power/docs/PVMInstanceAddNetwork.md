# IbmCloudPower::PVMInstanceAddNetwork

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ip_address** | **String** | The requested ip address of this network interface. Only valid when networkID is specified. | [optional] |
| **network_id** | **String** | ID of the network. Required if externalNetworkInterfaceCRN is not specified. Cannot be combined with externalNetworkInterfaceCRN. | [optional] |
| **network_security_group_ids** | **Array&lt;String&gt;** | Network security groups that the network interface is a member of. There is a limit of 1 network security group in the array. If not specified, default network security group is used. Only valid when networkID is specified. | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::PVMInstanceAddNetwork.new(
  ip_address: null,
  network_id: null,
  network_security_group_ids: null
)
```

