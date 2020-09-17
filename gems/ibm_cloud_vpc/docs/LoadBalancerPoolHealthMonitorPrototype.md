# IbmCloudVpc::LoadBalancerPoolHealthMonitorPrototype

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**delay** | **Integer** | The health check interval in seconds. Interval must be greater than timeout value. | 
**max_retries** | **Integer** | The health check max retries. | 
**port** | **Integer** |  | [optional] 
**timeout** | **Integer** | The health check timeout in seconds. | 
**type** | **String** | The protocol type of this load balancer pool health monitor. | 
**url_path** | **String** | The health check URL. This is applicable only to &#x60;http&#x60; type of health monitor. | [optional] 

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


