# IbmCloudPower::VPNConnections

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vpn_connections** | [**Array&lt;VPNConnection&gt;**](VPNConnection.md) | an array of VPN Connections | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::VPNConnections.new(
  vpn_connections: [{&quot;deadPeerDetection&quot;:{&quot;action&quot;:&quot;restart&quot;,&quot;interval&quot;:10,&quot;threshold&quot;:5},&quot;id&quot;:&quot;123e4567-e89b-12d3-a456-42661475&quot;,&quot;ikePolicy&quot;:{&quot;id&quot;:&quot;7654e321-e89b-12d3-a456-4566447&quot;,&quot;name&quot;:&quot;IKE Policy 3&quot;},&quot;ipSecPolicy&quot;:{&quot;id&quot;:&quot;456f7890-e89b-12d3-a456-4569934&quot;,&quot;name&quot;:&quot;IPSec Policy 2&quot;},&quot;localGatewayAddress&quot;:&quot;192.168.1.1&quot;,&quot;mode&quot;:&quot;route&quot;,&quot;name&quot;:&quot;VPN Connection 2&quot;,&quot;peerGatewayAddress&quot;:&quot;192.168.44.1&quot;,&quot;peerSubnets&quot;:[&quot;128.169.1.0/24&quot;,&quot;128.168.1.0/27&quot;],&quot;status&quot;:&quot;Active&quot;,&quot;vpnGatewayAddress&quot;:&quot;192.168.24.1&quot;}]
)
```

