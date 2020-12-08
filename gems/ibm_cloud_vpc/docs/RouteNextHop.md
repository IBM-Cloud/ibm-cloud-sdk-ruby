# IbmCloudVpc::RouteNextHop

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | **String** | The IP address. This property may add support for IPv6 addresses in the future. When processing a value in this property, verify that the address is in an expected format. If it is not, log an error. Optionally halt processing and surface the error, or bypass the resource on which the unexpected IP address format was encountered. | 
**deleted** | [**Deleted**](Deleted.md) |  | [optional] 
**href** | **String** | The VPN connection&#39;s canonical URL | 
**id** | **String** | The unique identifier for this VPN gateway connection | 
**name** | **String** | The user-defined name for this VPN connection | 
**resource_type** | **String** | The resource type | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::RouteNextHop.new(address: null,
                                 deleted: null,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/vpn_gateways/ddf51bec-3424-11e8-b467-0ed5f89f718b/connections/93487806-7743-4c46-81d6-72869883ea0b,
                                 id: a10a5771-dc23-442c-8460-c3601d8542f7,
                                 name: my-vpn-connection,
                                 resource_type: null)
```


