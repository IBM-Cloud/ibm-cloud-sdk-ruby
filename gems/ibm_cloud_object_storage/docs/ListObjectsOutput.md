# IbmCloudObjectStorage::ListObjectsOutput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**is_truncated** | **Boolean** |  | [optional] 
**marker** | **String** |  | [optional] 
**next_marker** | **String** |  | [optional] 
**contents** | **Array&lt;Object&gt;** |  | [optional] 
**name** | **String** |  | [optional] 
**prefix** | **String** |  | [optional] 
**delimiter** | **String** |  | [optional] 
**max_keys** | **Integer** |  | [optional] 
**common_prefixes** | [**Array&lt;CommonPrefix&gt;**](CommonPrefix.md) |  | [optional] 
**encoding_type** | [**EncodingType**](EncodingType.md) |  | [optional] 

## Code Sample

```ruby
require 'IbmCloudObjectStorage'

instance = IbmCloudObjectStorage::ListObjectsOutput.new(is_truncated: null,
                                 marker: null,
                                 next_marker: null,
                                 contents: null,
                                 name: null,
                                 prefix: null,
                                 delimiter: null,
                                 max_keys: null,
                                 common_prefixes: null,
                                 encoding_type: null)
```


