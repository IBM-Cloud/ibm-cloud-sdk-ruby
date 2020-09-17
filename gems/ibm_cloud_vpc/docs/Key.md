# IbmCloudVpc::Key

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **DateTime** | The date and time that the key was created | 
**crn** | **String** | The CRN for this key | 
**fingerprint** | **String** | The fingerprint for this key.  The value is returned base64-encoded and prefixed with the hash algorithm (always &#x60;SHA256&#x60;). | 
**href** | **String** | The URL for this key | 
**id** | **String** | The unique identifier for this key | 
**length** | **Integer** | The length of this key (in bits) | 
**name** | **String** | The unique user-defined name for this key. If unspecified, the name will be a hyphenated list of randomly-selected words. | 
**public_key** | **String** | The public SSH key | 
**resource_group** | [**ResourceGroupReference**](ResourceGroupReference.md) |  | 
**type** | **String** | The cryptosystem used by this key | [default to &#39;rsa&#39;]

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::Key.new(created_at: null,
                                 crn: crn:v1:bluemix:public:is:us-south:a/123456::key:a6b1a881-2ce8-41a3-80fc-36316a73f803,
                                 fingerprint: SHA256:yxavE4CIOL2NlsqcurRO3xGjkP6m/0mp8ugojH5yxlY,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/keys/a6b1a881-2ce8-41a3-80fc-36316a73f803,
                                 id: a6b1a881-2ce8-41a3-80fc-36316a73f803,
                                 length: null,
                                 name: my-key,
                                 public_key: AAAAB3NzaC1yc2EAAAADAQABAAABAQDDGe50Bxa5T5NDddrrtbx2Y4/VGbiCgXqnBsYToIUKoFSHTQl5IX3PasGnneKanhcLwWz5M5MoCRvhxTp66NKzIfAz7r+FX9rxgR+ZgcM253YAqOVeIpOU408simDZKriTlN8kYsXL7P34tsWuAJf4MgZtJAQxous/2byetpdCv8ddnT4X3ltOg9w+LqSCPYfNivqH00Eh7S1Ldz7I8aw5WOp5a+sQFP/RbwfpwHp+ny7DfeIOokcuI42tJkoBn7UsLTVpCSmXr2EDRlSWe/1M/iHNRBzaT3CK0+SwZWd2AEjePxSnWKNGIEUJDlUYp7hKhiQcgT5ZAnWU121oc5En,
                                 resource_group: null,
                                 type: null)
```


