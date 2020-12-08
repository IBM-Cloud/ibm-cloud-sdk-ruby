# IbmCloudVpc::RoutePrototype

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**action** | **String** | The action to perform with a packet matching the route: - &#x60;delegate&#x60;: delegate to the system&#39;s built-in routes - &#x60;deliver&#x60;: deliver the packet to the specified &#x60;next_hop&#x60; - &#x60;drop&#x60;: drop the packet | [optional] [default to &#39;deliver&#39;]
**destination** | **String** |  | 
**name** | **String** | The user-defined name for this route. If unspecified, the name will be a hyphenated list of randomly-selected words. Names must be unique within the VPC routing table the route resides in. | [optional] 
**next_hop** | [**RouteNextHopPrototype**](RouteNextHopPrototype.md) | If &#x60;action&#x60; is &#x60;deliver&#x60;, the next hop that packets will be delivered to.  For other &#x60;action&#x60; values, its &#x60;address&#x60; will be &#x60;0.0.0.0&#x60;. | 
**zone** | [**ZoneIdentity**](ZoneIdentity.md) |  | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::RoutePrototype.new(action: null,
                                 destination: null,
                                 name: my-route-2,
                                 next_hop: null,
                                 zone: null)
```


