# IbmCloudVpc::VPNGatewayConnection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**admin_state_up** | **Boolean** | If set to false, the VPN connection is shut down | [default to true]
**authentication_mode** | **String** | The authentication mode. Only &#x60;psk&#x60; is currently supported. | 
**created_at** | **DateTime** | The date and time that this VPN gateway connection was created | 
**dead_peer_detection** | [**VPNGatewayConnectionDPD**](VPNGatewayConnectionDPD.md) |  | 
**href** | **String** | The VPN connection&#39;s canonical URL | 
**id** | **String** | The unique identifier for this VPN connection | 
**ike_policy** | [**IKEPolicyReference**](IKEPolicyReference.md) |  | [optional] 
**ipsec_policy** | [**IPsecPolicyReference**](IPsecPolicyReference.md) |  | [optional] 
**local_cidrs** | **Array&lt;String&gt;** | A collection of local CIDRs for this resource | 
**name** | **String** | The user-defined name for this VPN gateway connection | 
**peer_address** | **String** | The IP address of the peer VPN gateway | 
**peer_cidrs** | **Array&lt;String&gt;** | A collection of peer CIDRs for this resource | 
**psk** | **String** | The preshared key | 
**resource_type** | **String** | The resource type | 
**route_mode** | **String** | The routing mode. Only &#x60;policy&#x60; is currently supported. | 
**status** | **String** | The status of a VPN connection | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::VPNGatewayConnection.new(admin_state_up: null,
                                 authentication_mode: null,
                                 created_at: null,
                                 dead_peer_detection: null,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/vpn_gateways/ddf51bec-3424-11e8-b467-0ed5f89f718b/connections/93487806-7743-4c46-81d6-72869883ea0b,
                                 id: a10a5771-dc23-442c-8460-c3601d8542f7,
                                 ike_policy: null,
                                 ipsec_policy: null,
                                 local_cidrs: null,
                                 name: my-vpn-connection,
                                 peer_address: 169.21.50.5,
                                 peer_cidrs: null,
                                 psk: lkj14b1oi0alcniejkso,
                                 resource_type: null,
                                 route_mode: null,
                                 status: null)
```


