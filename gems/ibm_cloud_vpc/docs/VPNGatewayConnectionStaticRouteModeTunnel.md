# IbmCloudVpc::VPNGatewayConnectionStaticRouteModeTunnel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**public_ip** | [**IP**](IP.md) | The IP address of the VPN gateway member in which the tunnel resides | 
**status** | **String** | The status of the VPN Tunnel | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::VPNGatewayConnectionStaticRouteModeTunnel.new(public_ip: null,
                                 status: null)
```


