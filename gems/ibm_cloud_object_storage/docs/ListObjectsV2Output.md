# IbmCloudObjectStorage::ListObjectsV2Output

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**is_truncated** | **Boolean** |  | [optional] 
**contents** | **Array&lt;Object&gt;** |  | [optional] 
**name** | **String** |  | [optional] 
**prefix** | **String** |  | [optional] 
**delimiter** | **String** |  | [optional] 
**max_keys** | **Integer** |  | [optional] 
**common_prefixes** | [**Array&lt;CommonPrefix&gt;**](CommonPrefix.md) |  | [optional] 
**encoding_type** | [**EncodingType**](EncodingType.md) |  | [optional] 
**key_count** | **Integer** |  | [optional] 
**continuation_token** | **String** |  | [optional] 
**next_continuation_token** | **String** |  | [optional] 
**start_after** | **String** |  | [optional] 

## Code Sample

```ruby
require 'IbmCloudObjectStorage'

instance = IbmCloudObjectStorage::ListObjectsV2Output.new(is_truncated: null,
                                 contents: null,
                                 name: null,
                                 prefix: null,
                                 delimiter: null,
                                 max_keys: null,
                                 common_prefixes: null,
                                 encoding_type: null,
                                 key_count: null,
                                 continuation_token: null,
                                 next_continuation_token: null,
                                 start_after: null)
```


