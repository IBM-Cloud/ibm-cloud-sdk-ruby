# IbmCloudVpc::LoadBalancerPoolHealthMonitorPrototype

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**delay** | **Integer** | The health check interval in seconds. Interval must be greater than timeout value. | 
**max_retries** | **Integer** | The health check max retries. | 
**port** | **Integer** | The health check port number. If specified, this overrides the ports specified in the server member resources. | [optional] 
**timeout** | **Integer** | The health check timeout in seconds. | 
**type** | **String** | The protocol type of this load balancer pool health monitor. | 
**url_path** | **String** | The health check URL path. Applicable only if the health monitor &#x60;type&#x60; is &#x60;http&#x60; or &#x60;https&#x60;. | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::LoadBalancerPoolHealthMonitorPrototype.new(delay: 5,
                                 max_retries: 2,
                                 port: null,
                                 timeout: 2,
                                 type: null,
                                 url_path: /)
```


