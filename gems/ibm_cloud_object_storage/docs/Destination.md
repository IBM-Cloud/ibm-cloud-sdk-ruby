# IbmCloudObjectStorage::Destination

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bucket** | **String** |  | 
**account** | **String** |  | [optional] 
**storage_class** | [**StorageClass**](StorageClass.md) |  | [optional] 
**access_control_translation** | [**AccessControlTranslation**](AccessControlTranslation.md) |  | [optional] 
**encryption_configuration** | [**EncryptionConfiguration**](EncryptionConfiguration.md) |  | [optional] 

## Code Sample

```ruby
require 'IbmCloudObjectStorage'

instance = IbmCloudObjectStorage::Destination.new(bucket: null,
                                 account: null,
                                 storage_class: null,
                                 access_control_translation: null,
                                 encryption_configuration: null)
```


