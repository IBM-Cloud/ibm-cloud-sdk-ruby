# IbmCloudObjectStorage::Encryption

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**encryption_type** | [**ServerSideEncryption**](ServerSideEncryption.md) |  | 
**kms_key_id** | **String** |  | [optional] 
**kms_context** | **String** |  | [optional] 

## Code Sample

```ruby
require 'IbmCloudObjectStorage'

instance = IbmCloudObjectStorage::Encryption.new(encryption_type: null,
                                 kms_key_id: null,
                                 kms_context: null)
```


