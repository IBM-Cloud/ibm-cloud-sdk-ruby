# IbmCloudVpc::IPsecPolicyPatch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**authentication_algorithm** | **String** | The authentication algorithm | [optional] 
**encryption_algorithm** | **String** | The encryption algorithm | [optional] 
**key_lifetime** | **Integer** | The key lifetime in seconds | [optional] [default to 3600]
**name** | **String** | The user-defined name for this IPsec policy | [optional] 
**pfs** | **String** | Perfect Forward Secrecy | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::IPsecPolicyPatch.new(authentication_algorithm: null,
                                 encryption_algorithm: null,
                                 key_lifetime: 3600,
                                 name: my-ipsec-policy,
                                 pfs: null)
```


