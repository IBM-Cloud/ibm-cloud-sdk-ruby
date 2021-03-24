# IbmCloudObjectStorage::CSVInput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**file_header_info** | [**FileHeaderInfo**](FileHeaderInfo.md) |  | [optional] 
**comments** | **String** |  | [optional] 
**quote_escape_character** | **String** |  | [optional] 
**record_delimiter** | **String** |  | [optional] 
**field_delimiter** | **String** |  | [optional] 
**quote_character** | **String** |  | [optional] 

## Code Sample

```ruby
require 'IbmCloudObjectStorage'

instance = IbmCloudObjectStorage::CSVInput.new(file_header_info: null,
                                 comments: null,
                                 quote_escape_character: null,
                                 record_delimiter: null,
                                 field_delimiter: null,
                                 quote_character: null)
```


