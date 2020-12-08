# IbmCloudVpc::LoadBalancerListenerPrototype

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accept_proxy_protocol** | **Boolean** | If set to &#x60;true&#x60;, this listener will accept and forward PROXY protocol information. Supported by load balancers in the &#x60;application&#x60; family (otherwise always &#x60;false&#x60;). | [optional] [default to false]
**certificate_instance** | [**CertificateInstanceIdentity**](CertificateInstanceIdentity.md) |  | [optional] 
**connection_limit** | **Integer** | The connection limit of the listener. | [optional] [default to 15000]
**default_pool** | [**LoadBalancerPoolIdentity**](LoadBalancerPoolIdentity.md) |  | [optional] 
**policies** | [**Array&lt;LoadBalancerListenerPolicyPrototype&gt;**](LoadBalancerListenerPolicyPrototype.md) | The list of policies of this listener. | [optional] 
**port** | **Integer** | The listener port number. Each listener in the load balancer must have a unique &#x60;port&#x60; and &#x60;protocol&#x60; combination. | 
**protocol** | **String** | The listener protocol. Load balancers in the &#x60;network&#x60; family support &#x60;tcp&#x60;. Load balancers in the &#x60;application&#x60; family support &#x60;tcp&#x60;, &#x60;http&#x60;, and &#x60;https&#x60;. Each listener in the load balancer must have a unique &#x60;port&#x60; and &#x60;protocol&#x60; combination. | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::LoadBalancerListenerPrototype.new(accept_proxy_protocol: true,
                                 certificate_instance: null,
                                 connection_limit: 2000,
                                 default_pool: null,
                                 policies: null,
                                 port: 443,
                                 protocol: null)
```


