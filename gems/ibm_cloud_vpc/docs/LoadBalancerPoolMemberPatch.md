# IbmCloudVpc::LoadBalancerPoolMemberPatch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**port** | **Integer** | The port number of the application running in the server member. | [optional] 
**target** | [**LoadBalancerPoolMemberTargetPrototype**](LoadBalancerPoolMemberTargetPrototype.md) |  | [optional] 
**weight** | **Integer** | Weight of the server member. Applicable only if the pool algorithm is &#x60;weighted_round_robin&#x60;. | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::LoadBalancerPoolMemberPatch.new(port: 80,
                                 target: null,
                                 weight: 50)
```


