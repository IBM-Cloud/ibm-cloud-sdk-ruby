# IbmCloudVpc::IKEPolicy

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**authentication_algorithm** | **String** | The authentication algorithm | 
**connections** | [**Array&lt;VPNGatewayConnectionReference&gt;**](VPNGatewayConnectionReference.md) | Collection of references to VPN gateway connections that use this IKE policy | 
**created_at** | **DateTime** | The date and time that this IKE policy was created | 
**dh_group** | **Integer** | The Diffie-Hellman group | 
**encryption_algorithm** | **String** | The encryption algorithm | 
**href** | **String** | The IKE policy&#39;s canonical URL | 
**id** | **String** | The unique identifier for this IKE policy | 
**ike_version** | **Integer** | The IKE protocol version | 
**key_lifetime** | **Integer** | The key lifetime in seconds | [default to 28800]
**name** | **String** | The user-defined name for this IKE policy | 
**negotiation_mode** | **String** | The IKE negotiation mode. Only &#x60;main&#x60; is supported. | 
**resource_group** | [**ResourceGroupReference**](ResourceGroupReference.md) |  | 
**resource_type** | **String** | The resource type | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::IKEPolicy.new(authentication_algorithm: null,
                                 connections: null,
                                 created_at: null,
                                 dh_group: null,
                                 encryption_algorithm: null,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/ike_policies/ddf51bec-3424-11e8-b467-0ed5f89f718b,
                                 id: ddf51bec-3424-11e8-b467-0ed5f89f718b,
                                 ike_version: null,
                                 key_lifetime: 28800,
                                 name: my-ike-policy,
                                 negotiation_mode: null,
                                 resource_group: null,
                                 resource_type: null)
```


