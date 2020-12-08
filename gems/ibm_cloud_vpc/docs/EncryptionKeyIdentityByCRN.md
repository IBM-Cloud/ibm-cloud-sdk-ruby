# IbmCloudVpc::EncryptionKeyIdentityByCRN

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**crn** | **String** | The CRN of the [Key Protect Root Key](https://cloud.ibm.com/docs/key-protect?topic&#x3D;key-protect-getting-started-tutorial) or [Hyper Protect Crypto Service Root Key](https://cloud.ibm.com/docs/hs-crypto?topic&#x3D;hs-crypto-get-started) for this resource. | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::EncryptionKeyIdentityByCRN.new(crn: crn:v1:bluemix:public:kms:us-south:a/dffc98a0f1f0f95f6613b3b752286b87:e4a29d1a-2ef0-42a6-8fd2-350deb1c647e:key:5437653b-c4b1-447f-9646-b2a2a4cd6179)
```


