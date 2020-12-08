# IbmCloudVpc::VPNGatewayConnectionPatch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**admin_state_up** | **Boolean** | If set to false, the VPN gateway connection is shut down | [optional] [default to true]
**dead_peer_detection** | [**VPNGatewayConnectionDPDPrototype**](VPNGatewayConnectionDPDPrototype.md) |  | [optional] 
**ike_policy** | [**IKEPolicyIdentity**](IKEPolicyIdentity.md) |  | [optional] 
**ipsec_policy** | [**IPsecPolicyIdentity**](IPsecPolicyIdentity.md) |  | [optional] 
**name** | **String** | The user-defined name for this VPN gateway connection | [optional] 
**peer_address** | **String** | The IP address of the peer VPN gateway | [optional] 
**psk** | **String** | The preshared key | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::VPNGatewayConnectionPatch.new(admin_state_up: null,
                                 dead_peer_detection: null,
                                 ike_policy: null,
                                 ipsec_policy: null,
                                 name: my-vpn-connection,
                                 peer_address: 169.21.50.5,
                                 psk: lkj14b1oi0alcniejkso)
```


