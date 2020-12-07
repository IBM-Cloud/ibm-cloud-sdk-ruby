# IbmCloudIam::Error

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **String** | Error code of the REST Exception.  | 
**message_code** | **String** | Error message code of the REST Exception.  | 
**message** | **String** | Error message of the REST Exception. Error messages are derived base on the input locale of the REST request and the available Message catalogs. Dynamic fallback to &#39;us-english&#39; is happening if no message catalog is available for the provided input locale. | 
**details** | **String** | Error details of the REST Exception.  | [optional] 

## Code Sample

```ruby
require 'IbmCloudIam'

instance = IbmCloudIam::Error.new(code: null,
                                 message_code: null,
                                 message: null,
                                 details: null)
```


