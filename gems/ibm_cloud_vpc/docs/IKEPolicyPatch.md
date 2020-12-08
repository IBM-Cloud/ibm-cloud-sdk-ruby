# IbmCloudVpc::IKEPolicyPatch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**authentication_algorithm** | **String** | The authentication algorithm | [optional] 
**dh_group** | **Integer** | The Diffie-Hellman group | [optional] 
**encryption_algorithm** | **String** | The encryption algorithm | [optional] 
**ike_version** | **Integer** | The IKE protocol version | [optional] 
**key_lifetime** | **Integer** | The key lifetime in seconds | [optional] [default to 28800]
**name** | **String** | The user-defined name for this IKE policy | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::IKEPolicyPatch.new(authentication_algorithm: null,
                                 dh_group: null,
                                 encryption_algorithm: null,
                                 ike_version: null,
                                 key_lifetime: 28800,
                                 name: my-ike-policy)
```


