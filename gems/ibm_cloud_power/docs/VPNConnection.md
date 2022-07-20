# IbmCloudPower::VPNConnection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dead_peer_detection** | [**DeadPeerDetection**](DeadPeerDetection.md) |  |  |
| **id** | **String** | unique identifier for VPN Connection |  |
| **ike_policy** | [**IKEPolicyRef**](IKEPolicyRef.md) |  |  |
| **ip_sec_policy** | [**IPSecPolicyRef**](IPSecPolicyRef.md) |  |  |
| **local_gateway_address** | **String** | local Gateway address, only in &#39;route&#39; mode. |  |
| **mode** | **String** | Mode used by this VPNConnection, either policy-based, or route-based, this attribute is set at the creation and cannot be updated later. |  |
| **name** | **String** | VPN Connection name |  |
| **network_ids** | **Array&lt;String&gt;** | an array of network IDs |  |
| **peer_gateway_address** | **String** | IP address of the Peer Gateway attached to this VPNConnection |  |
| **peer_subnets** | **Array&lt;String&gt;** | an array of strings containing CIDR of peer subnets |  |
| **status** | **String** | status of the VPN connection |  |
| **vpn_gateway_address** | **String** | public IP address of the VPN Gateway (vSRX) attached to this VPNConnection |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::VPNConnection.new(
  dead_peer_detection: null,
  id: 123e4567-e89b-12d3-a456-42661475,
  ike_policy: null,
  ip_sec_policy: null,
  local_gateway_address: 192.168.1.1,
  mode: policy,
  name: VPN-Connection-1,
  network_ids: null,
  peer_gateway_address: 192.168.1.1,
  peer_subnets: [&quot;128.170.1.0/20&quot;,&quot;128.169.1.0/24&quot;,&quot;128.168.1.0/27&quot;,&quot;128.170.1.0/32&quot;],
  status: null,
  vpn_gateway_address: 192.168.204.1
)
```

