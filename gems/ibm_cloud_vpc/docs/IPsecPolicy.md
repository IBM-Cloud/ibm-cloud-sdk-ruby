# IbmCloudVpc::IPsecPolicy

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**authentication_algorithm** | **String** | The authentication algorithm | 
**connections** | [**Array&lt;VPNGatewayConnectionReference&gt;**](VPNGatewayConnectionReference.md) | Collection of references to VPN gateway connections that use this IPsec policy | 
**created_at** | **DateTime** | The date and time that this IPsec policy was created | 
**encapsulation_mode** | **String** | The encapsulation mode used. Only &#x60;tunnel&#x60; is supported. | 
**encryption_algorithm** | **String** | The encryption algorithm | 
**href** | **String** | The IPsec policy&#39;s canonical URL | 
**id** | **String** | The unique identifier for this IPsec policy | 
**key_lifetime** | **Integer** | The key lifetime in seconds | [default to 3600]
**name** | **String** | The user-defined name for this IPsec policy | 
**pfs** | **String** | Perfect Forward Secrecy | 
**resource_group** | [**ResourceGroupReference**](ResourceGroupReference.md) |  | 
**resource_type** | **String** | The resource type | 
**transform_protocol** | **String** | The transform protocol used. Only &#x60;esp&#x60; is supported. | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::IPsecPolicy.new(authentication_algorithm: null,
                                 connections: null,
                                 created_at: null,
                                 encapsulation_mode: null,
                                 encryption_algorithm: null,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/ipsec_policies/ddf51bec-3424-11e8-b467-0ed5f89f718b,
                                 id: ddf51bec-3424-11e8-b467-0ed5f89f718b,
                                 key_lifetime: 3600,
                                 name: my-ipsec-policy,
                                 pfs: null,
                                 resource_group: null,
                                 resource_type: null,
                                 transform_protocol: null)
```


