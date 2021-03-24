# IbmCloudObjectStorage::Object

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**key** | **String** |  | [optional] 
**last_modified** | **DateTime** |  | [optional] 
**e_tag** | **String** |  | [optional] 
**size** | **Integer** |  | [optional] 
**storage_class** | [**ObjectStorageClass**](ObjectStorageClass.md) |  | [optional] 
**owner** | [**Owner**](Owner.md) |  | [optional] 

## Code Sample

```ruby
require 'IbmCloudObjectStorage'

instance = IbmCloudObjectStorage::Object.new(key: null,
                                 last_modified: null,
                                 e_tag: null,
                                 size: null,
                                 storage_class: null,
                                 owner: null)
```


