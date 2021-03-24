# IbmCloudObjectStorage::ListPartsOutput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bucket** | **String** |  | [optional] 
**key** | **String** |  | [optional] 
**upload_id** | **String** |  | [optional] 
**part_number_marker** | **Integer** |  | [optional] 
**next_part_number_marker** | **Integer** |  | [optional] 
**max_parts** | **Integer** |  | [optional] 
**is_truncated** | **Boolean** |  | [optional] 
**parts** | [**Array&lt;Part&gt;**](Part.md) |  | [optional] 
**initiator** | [**Initiator**](Initiator.md) |  | [optional] 
**owner** | [**Owner**](Owner.md) |  | [optional] 
**storage_class** | [**StorageClass**](StorageClass.md) |  | [optional] 

## Code Sample

```ruby
require 'IbmCloudObjectStorage'

instance = IbmCloudObjectStorage::ListPartsOutput.new(bucket: null,
                                 key: null,
                                 upload_id: null,
                                 part_number_marker: null,
                                 next_part_number_marker: null,
                                 max_parts: null,
                                 is_truncated: null,
                                 parts: null,
                                 initiator: null,
                                 owner: null,
                                 storage_class: null)
```


