# IbmCloudVpc::VPNGatewayMember

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**public_ip** | [**IP**](IP.md) |  | 
**role** | **String** | The high availability role assigned to the VPN gateway member | 
**status** | **String** | The status of the VPN gateway member | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::VPNGatewayMember.new(public_ip: null,
                                 role: null,
                                 status: null)
```


