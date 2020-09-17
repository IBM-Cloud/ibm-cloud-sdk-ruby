# IbmCloudVpc::VPNGateway

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**connections** | [**Array&lt;VPNGatewayConnectionReference&gt;**](VPNGatewayConnectionReference.md) | Collection of references to VPN gateway connections | 
**created_at** | **DateTime** | The date and time that this VPN gateway was created | 
**crn** | **String** | The VPN gateway&#39;s CRN | 
**href** | **String** | The VPN gateway&#39;s canonical URL | 
**id** | **String** | The unique identifier for this VPN gateway | 
**name** | **String** | The user-defined name for this VPN gateway | 
**public_ip** | [**VPNGatewayPublicIp**](VPNGatewayPublicIp.md) |  | 
**resource_group** | [**ResourceGroupReference**](ResourceGroupReference.md) |  | 
**resource_type** | **String** | The resource type | 
**status** | **String** | The status of the VPN gateway | 
**subnet** | [**SubnetReference**](SubnetReference.md) |  | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::VPNGateway.new(connections: null,
                                 created_at: null,
                                 crn: crn:v1:bluemix:public:is:us-south:a/123456::vpn:ddf51bec-3424-11e8-b467-0ed5f89f718b,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/vpn_gateways/ddf51bec-3424-11e8-b467-0ed5f89f718b,
                                 id: ddf51bec-3424-11e8-b467-0ed5f89f718b,
                                 name: my-vpn-gateway,
                                 public_ip: null,
                                 resource_group: null,
                                 resource_type: null,
                                 status: null,
                                 subnet: null)
```


