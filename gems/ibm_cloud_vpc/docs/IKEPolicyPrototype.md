# IbmCloudVpc::IKEPolicyPrototype

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**authentication_algorithm** | **String** | The authentication algorithm | 
**dh_group** | **Integer** | The Diffie-Hellman group | 
**encryption_algorithm** | **String** | The encryption algorithm | 
**ike_version** | **Integer** | The IKE protocol version | 
**key_lifetime** | **Integer** | The key lifetime in seconds | [optional] [default to 28800]
**name** | **String** | The user-defined name for this IKE policy | [optional] 
**resource_group** | [**ResourceGroupIdentity**](ResourceGroupIdentity.md) |  | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::IKEPolicyPrototype.new(authentication_algorithm: null,
                                 dh_group: null,
                                 encryption_algorithm: null,
                                 ike_version: null,
                                 key_lifetime: 28800,
                                 name: my-ike-policy,
                                 resource_group: null)
```


