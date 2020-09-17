# IbmCloudVpc::LoadBalancerListenerPrototype

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**certificate_instance** | [**CertificateInstanceIdentity**](CertificateInstanceIdentity.md) |  | [optional] 
**connection_limit** | **Integer** | The connection limit of the listener. | [optional] 
**default_pool** | [**LoadBalancerPoolIdentity**](LoadBalancerPoolIdentity.md) |  | [optional] 
**policies** | [**Array&lt;LoadBalancerListenerPolicyPrototype&gt;**](LoadBalancerListenerPolicyPrototype.md) | The list of policies of this listener | [optional] 
**port** | **Integer** | The listener port number. | 
**protocol** | **String** | The listener protocol. Load balancers in the &#x60;network&#x60; family support &#x60;tcp&#x60;. Load balancers in the &#x60;application&#x60; family support &#x60;tcp&#x60;, &#x60;http&#x60;, and &#x60;https&#x60;. | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::LoadBalancerListenerPrototype.new(certificate_instance: null,
                                 connection_limit: 2000,
                                 default_pool: null,
                                 policies: null,
                                 port: 443,
                                 protocol: null)
```


