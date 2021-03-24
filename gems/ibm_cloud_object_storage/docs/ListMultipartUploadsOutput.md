# IbmCloudObjectStorage::ListMultipartUploadsOutput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bucket** | **String** |  | [optional] 
**key_marker** | **String** |  | [optional] 
**upload_id_marker** | **String** |  | [optional] 
**next_key_marker** | **String** |  | [optional] 
**prefix** | **String** |  | [optional] 
**delimiter** | **String** |  | [optional] 
**next_upload_id_marker** | **String** |  | [optional] 
**max_uploads** | **Integer** |  | [optional] 
**is_truncated** | **Boolean** |  | [optional] 
**uploads** | [**Array&lt;MultipartUpload&gt;**](MultipartUpload.md) |  | [optional] 
**common_prefixes** | [**Array&lt;CommonPrefix&gt;**](CommonPrefix.md) |  | [optional] 
**encoding_type** | [**EncodingType**](EncodingType.md) |  | [optional] 

## Code Sample

```ruby
require 'IbmCloudObjectStorage'

instance = IbmCloudObjectStorage::ListMultipartUploadsOutput.new(bucket: null,
                                 key_marker: null,
                                 upload_id_marker: null,
                                 next_key_marker: null,
                                 prefix: null,
                                 delimiter: null,
                                 next_upload_id_marker: null,
                                 max_uploads: null,
                                 is_truncated: null,
                                 uploads: null,
                                 common_prefixes: null,
                                 encoding_type: null)
```


