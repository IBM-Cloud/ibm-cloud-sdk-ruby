# IbmCloudVpc::VPNGatewayConnectionDPDPrototype

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**action** | **String** | Dead Peer Detection actions | [optional] [default to &#39;restart&#39;]
**interval** | **Integer** | Dead Peer Detection interval in seconds | [optional] [default to 2]
**timeout** | **Integer** | Dead Peer Detection timeout in seconds. Must be at least the interval | [optional] [default to 10]

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::VPNGatewayConnectionDPDPrototype.new(action: restart,
                                 interval: 30,
                                 timeout: 120)
```


