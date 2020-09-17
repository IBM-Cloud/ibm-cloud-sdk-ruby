# IbmCloudVpc::VolumePrototype

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**encryption_key** | [**EncryptionKeyIdentity**](EncryptionKeyIdentity.md) | The identity of the root key to use to wrap the data encryption key for the volume.  If this property is not provided, the &#x60;encryption&#x60; type for the volume will be &#x60;provider_managed&#x60;. | [optional] 
**iops** | **Integer** | The bandwidth for the volume | [optional] 
**name** | **String** | The unique user-defined name for this volume | [optional] 
**profile** | [**VolumeProfileIdentity**](VolumeProfileIdentity.md) |  | 
**resource_group** | [**ResourceGroupIdentity**](ResourceGroupIdentity.md) |  | [optional] 
**zone** | [**ZoneIdentity**](ZoneIdentity.md) |  | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::VolumePrototype.new(encryption_key: null,
                                 iops: 10000,
                                 name: my-volume,
                                 profile: null,
                                 resource_group: null,
                                 zone: null)
```


