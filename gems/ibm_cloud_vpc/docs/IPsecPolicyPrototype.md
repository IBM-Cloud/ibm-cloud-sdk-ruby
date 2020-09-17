# IbmCloudVpc::IPsecPolicyPrototype

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**authentication_algorithm** | **String** | The authentication algorithm | 
**encryption_algorithm** | **String** | The encryption algorithm | 
**key_lifetime** | **Integer** | The key lifetime in seconds | [optional] [default to 3600]
**name** | **String** | The user-defined name for this IPsec policy | [optional] 
**pfs** | **String** | Perfect Forward Secrecy | 
**resource_group** | [**ResourceGroupIdentity**](ResourceGroupIdentity.md) |  | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::IPsecPolicyPrototype.new(authentication_algorithm: null,
                                 encryption_algorithm: null,
                                 key_lifetime: 3600,
                                 name: my-ipsec-policy,
                                 pfs: null,
                                 resource_group: null)
```


