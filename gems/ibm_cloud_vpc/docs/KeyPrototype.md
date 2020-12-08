# IbmCloudVpc::KeyPrototype

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The unique user-defined name for this key. If unspecified, the name will be a hyphenated list of randomly-selected words. | [optional] 
**public_key** | **String** | A unique public SSH key to import, encoded in PEM format. The key (prior to encoding) must be either 2048 or 4096 bits long. | 
**resource_group** | [**ResourceGroupIdentity**](ResourceGroupIdentity.md) |  | [optional] 
**type** | **String** | The crypto-system used by this key | [optional] [default to &#39;rsa&#39;]

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::KeyPrototype.new(name: my-key,
                                 public_key: AAAAB3NzaC1yc2EAAAADAQABAAABAQDDGe50Bxa5T5NDddrrtbx2Y4/VGbiCgXqnBsYToIUKoFSHTQl5IX3PasGnneKanhcLwWz5M5MoCRvhxTp66NKzIfAz7r+FX9rxgR+ZgcM253YAqOVeIpOU408simDZKriTlN8kYsXL7P34tsWuAJf4MgZtJAQxous/2byetpdCv8ddnT4X3ltOg9w+LqSCPYfNivqH00Eh7S1Ldz7I8aw5WOp5a+sQFP/RbwfpwHp+ny7DfeIOokcuI42tJkoBn7UsLTVpCSmXr2EDRlSWe/1M/iHNRBzaT3CK0+SwZWd2AEjePxSnWKNGIEUJDlUYp7hKhiQcgT5ZAnWU121oc5En,
                                 resource_group: null,
                                 type: null)
```


