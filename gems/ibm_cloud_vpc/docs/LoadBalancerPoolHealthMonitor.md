# IbmCloudVpc::LoadBalancerPoolHealthMonitor

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**delay** | **Integer** | The health check interval in seconds. Interval must be greater than timeout value. | 
**max_retries** | **Integer** | The health check max retries. | 
**port** | **Integer** |  | [optional] 
**timeout** | **Integer** | The health check timeout in seconds. | 
**type** | **String** | The protocol type of this load balancer pool health monitor.  The enumerated values for this property are expected to expand in the future. When processing this property, check for and log unknown values. Optionally halt processing and surface the error, or bypass the health monitor on which the unexpected property value was encountered. | 
**url_path** | **String** | The health check URL. This is applicable only to &#x60;http&#x60; type of health monitor. | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::LoadBalancerPoolHealthMonitor.new(delay: 5,
                                 max_retries: 2,
                                 port: null,
                                 timeout: 2,
                                 type: null,
                                 url_path: /)
```


