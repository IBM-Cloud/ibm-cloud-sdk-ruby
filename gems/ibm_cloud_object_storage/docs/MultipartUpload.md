# IbmCloudObjectStorage::MultipartUpload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**upload_id** | **String** |  | [optional] 
**key** | **String** |  | [optional] 
**initiated** | **DateTime** |  | [optional] 
**storage_class** | [**StorageClass**](StorageClass.md) |  | [optional] 
**owner** | [**Owner**](Owner.md) |  | [optional] 
**initiator** | [**Initiator**](Initiator.md) |  | [optional] 

## Code Sample

```ruby
require 'IbmCloudObjectStorage'

instance = IbmCloudObjectStorage::MultipartUpload.new(upload_id: null,
                                 key: null,
                                 initiated: null,
                                 storage_class: null,
                                 owner: null,
                                 initiator: null)
```


