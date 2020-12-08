# IbmCloudVpc::LoadBalancerPatch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**logging** | [**LoadBalancerLogging**](LoadBalancerLogging.md) | The logging configuration to use for this load balancer.  To activate logging, the load balancer profile must support the specified logging type. | [optional] 
**name** | **String** | The unique user-defined name for this load balancer | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::LoadBalancerPatch.new(logging: null,
                                 name: my-load-balancer)
```


