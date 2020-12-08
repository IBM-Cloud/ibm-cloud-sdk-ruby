# IbmCloudVpc::ImageByFile

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**encrypted_data_key** | **String** | A base64-encoded, encrypted representation of the key that was used to encrypt the data for this image.  That representation is created by wrapping the key&#39;s value with the &#x60;encryption_key&#x60; root key (which must also be provided), using either [Key Protect](https://cloud.ibm.com/docs/key-protect?topic&#x3D;key-protect-wrap-keys) or the [Hyper Protect Crypto Service](https://cloud.ibm.com/docs/services/hs-crypto?topic&#x3D;hs-crypto-wrap-keys).  If this property is not provided, the imported image is treated as unencrypted. | [optional] 
**encryption_key** | [**EncryptionKeyIdentity**](EncryptionKeyIdentity.md) | The identity of the root key that was used to wrap the data key (which is ultimately represented as &#x60;encrypted_data_key&#x60;). Additionally, the root key will be used to encrypt volumes created from this image (unless an alternate &#x60;encryption_key&#x60; is provided at volume creation).  If this property is not provided, the imported image is treated as unencrypted. | [optional] 
**file** | [**ImageFilePrototype**](ImageFilePrototype.md) |  | 
**operating_system** | [**OperatingSystemIdentity**](OperatingSystemIdentity.md) |  | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::ImageByFile.new(encrypted_data_key: null,
                                 encryption_key: null,
                                 file: null,
                                 operating_system: null)
```


