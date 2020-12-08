# IbmCloudVpc::VPNGatewayConnectionStaticRouteMode

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**routing_protocol** | **String** | Routing protocols are disabled for this VPN gateway connection. | [default to &#39;none&#39;]
**tunnels** | [**Array&lt;VPNGatewayConnectionStaticRouteModeTunnel&gt;**](VPNGatewayConnectionStaticRouteModeTunnel.md) | The VPN tunnel configuration for this VPN gateway connection (in static route mode). | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::VPNGatewayConnectionStaticRouteMode.new(routing_protocol: null,
                                 tunnels: null)
```


