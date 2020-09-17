# IbmCloudVpc::RoutePrototype

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**destination** | **String** |  | 
**name** | **String** | The user-defined name for this route. If unspecified, the name will be a hyphenated list of randomly-selected words. Names must be unique within the VPC routing table the route resides in. | [optional] 
**next_hop** | [**RouteNextHopPrototype**](RouteNextHopPrototype.md) | The next hop that packets will be delivered to.  | 
**zone** | [**ZoneIdentity**](ZoneIdentity.md) |  | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::RoutePrototype.new(destination: null,
                                 name: my-route-2,
                                 next_hop: null,
                                 zone: null)
```


