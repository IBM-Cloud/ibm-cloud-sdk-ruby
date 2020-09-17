# IbmCloudVpc::VPNGatewayConnectionReference

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**href** | **String** | The VPN connection&#39;s canonical URL | 
**id** | **String** | The unique identifier for this VPN connection | 
**name** | **String** | The user-defined name for this VPN connection | 
**resource_type** | **String** | The resource type | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::VPNGatewayConnectionReference.new(href: https://us-south.iaas.cloud.ibm.com/v1/vpn_gateways/ddf51bec-3424-11e8-b467-0ed5f89f718b/connections/93487806-7743-4c46-81d6-72869883ea0b,
                                 id: a10a5771-dc23-442c-8460-c3601d8542f7,
                                 name: my-vpn-connection,
                                 resource_type: null)
```


