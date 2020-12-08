# IbmCloudVpc::VolumePrototypeInstanceByImageContext

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**capacity** | **Integer** | The capacity of the volume in gigabytes. The specified minimum and maximum capacity values for creating or updating volumes may expand in the future. | [optional] [default to CAPACITY.N100]
**encryption_key** | [**EncryptionKeyIdentity**](EncryptionKeyIdentity.md) | The identity of the root key to use to wrap the data encryption key for the volume.  If this property is not provided but the image is encrypted, the image&#39;s &#x60;encryption_key&#x60; will be used. Otherwise, the &#x60;encryption&#x60; type for the volume will be &#x60;provider_managed&#x60;. | [optional] 
**iops** | **Integer** | The bandwidth for the volume | [optional] 
**name** | **String** | The unique user-defined name for this volume | [optional] 
**profile** | [**VolumeProfileIdentity**](VolumeProfileIdentity.md) |  | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::VolumePrototypeInstanceByImageContext.new(capacity: 100,
                                 encryption_key: null,
                                 iops: 10000,
                                 name: my-volume,
                                 profile: null)
```


