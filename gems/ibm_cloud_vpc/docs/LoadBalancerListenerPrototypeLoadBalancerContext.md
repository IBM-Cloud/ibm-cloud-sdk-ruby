# IbmCloudVpc::LoadBalancerListenerPrototypeLoadBalancerContext

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**connection_limit** | **Integer** | The connection limit of the listener. | [optional] 
**default_pool** | [**LoadBalancerPoolIdentityByName**](LoadBalancerPoolIdentityByName.md) |  | [optional] 
**port** | **Integer** | The listener port number. | 
**protocol** | **String** | The listener protocol. Load balancers in the &#x60;network&#x60; family support &#x60;tcp&#x60;. Load balancers in the &#x60;application&#x60; family support &#x60;tcp&#x60;, &#x60;http&#x60;, and &#x60;https&#x60;. | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::LoadBalancerListenerPrototypeLoadBalancerContext.new(connection_limit: 2000,
                                 default_pool: null,
                                 port: 443,
                                 protocol: null)
```


