# IbmCloudVpc::LoadBalancerListener

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accept_proxy_protocol** | **Boolean** | If set to &#x60;true&#x60;, this listener will accept and forward PROXY protocol information. Supported by load balancers in the &#x60;application&#x60; family (otherwise always &#x60;false&#x60;). | 
**certificate_instance** | [**CertificateInstanceReference**](CertificateInstanceReference.md) |  | [optional] 
**connection_limit** | **Integer** | The connection limit of the listener. | [optional] [default to 15000]
**created_at** | **DateTime** | The date and time that this listener was created | 
**default_pool** | [**LoadBalancerPoolReference**](LoadBalancerPoolReference.md) |  | [optional] 
**href** | **String** | The listener&#39;s canonical URL. | 
**id** | **String** | The unique identifier for this load balancer listener | 
**policies** | [**Array&lt;LoadBalancerListenerPolicyReference&gt;**](LoadBalancerListenerPolicyReference.md) | The list of policies of this listener | [optional] 
**port** | **Integer** | The listener port number. Each listener in the load balancer must have a unique &#x60;port&#x60; and &#x60;protocol&#x60; combination. | 
**protocol** | **String** | The listener protocol. Load balancers in the &#x60;network&#x60; family support &#x60;tcp&#x60;. Load balancers in the &#x60;application&#x60; family support &#x60;tcp&#x60;, &#x60;http&#x60;, and &#x60;https&#x60;. Each listener in the load balancer must have a unique &#x60;port&#x60; and &#x60;protocol&#x60; combination. | 
**provisioning_status** | **String** | The provisioning status of this listener | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::LoadBalancerListener.new(accept_proxy_protocol: true,
                                 certificate_instance: null,
                                 connection_limit: 2000,
                                 created_at: null,
                                 default_pool: null,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/load_balancers/dd754295-e9e0-4c9d-bf6c-58fbc59e5727/listeners/70294e14-4e61-11e8-bcf4-0242ac110004,
                                 id: 70294e14-4e61-11e8-bcf4-0242ac110004,
                                 policies: null,
                                 port: 443,
                                 protocol: null,
                                 provisioning_status: null)
```


