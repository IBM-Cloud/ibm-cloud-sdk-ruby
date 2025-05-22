# IbmCloudPower::VPNConnectionCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ike_policy** | **String** | unique identifier of IKEPolicy selected for this VPNConnection |  |
| **ip_sec_policy** | **String** | unique identifier of IPSecPolicy selected for this VPNConnection |  |
| **mode** | **String** | Mode used by this VPNConnection, either policy-based, or route-based, this attribute is set at the creation and cannot be updated later. |  |
| **name** | **String** | VPN Connection name |  |
| **networks** | **Array&lt;String&gt;** | an array of network IDs to attach to this VPNConnection |  |
| **peer_gateway_address** | **String** | IP address of the Peer Gateway attached to this VPNConnection |  |
| **peer_subnets** | **Array&lt;String&gt;** | an array of strings containing CIDR of peer subnets |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::VPNConnectionCreate.new(
  ike_policy: c36723ec-8593-11eb-8dcd-0242ac133853,
  ip_sec_policy: c12345d-8593-11eb-8dcd-0242ac134573,
  mode: policy,
  name: VPN-Connection-1,
  networks: [&quot;7f950c76-8582-11veb-8dcd-0242ac153&quot;,&quot;7f950c76-8582-11veb-8dcd-0242ac144&quot;,&quot;7f950c76-8582-11veb-8dcd-0242ac199&quot;],
  peer_gateway_address: 192.168.1.1,
  peer_subnets: [&quot;128.170.1.0/20&quot;,&quot;128.169.1.0/24&quot;,&quot;128.168.1.0/27&quot;,&quot;128.170.1.0/32&quot;]
)
```

