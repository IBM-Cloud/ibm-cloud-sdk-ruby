# IbmCloudPower::VPNConnectionUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ike_policy** | **String** | unique identifier of IKEPolicy selected for this VPNConnection | [optional] |
| **ip_sec_policy** | **String** | unique identifier of IPSecPolicy selected for this VPNConnection | [optional] |
| **name** | **String** | VPN Connection name | [optional] |
| **peer_gateway_address** | **String** | IP address of the Peer Gateway attached to this VPNConnection | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::VPNConnectionUpdate.new(
  ike_policy: c36723ec-8593-11eb-8dcd-0242ac133853,
  ip_sec_policy: c12345d-8593-11eb-8dcd-0242ac134573,
  name: VPN-Connection-1,
  peer_gateway_address: 192.168.1.1
)
```

