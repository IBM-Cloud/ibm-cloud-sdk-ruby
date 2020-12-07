# IbmCloudIam::OidcExceptionResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**context** | [**ExceptionResponseContext**](ExceptionResponseContext.md) |  | [optional] 
**error_code** | **String** | Error message code of the REST Exception.  | 
**error_message** | **String** | Error message of the REST Exception. Error messages are derived base on the input locale of the REST request and the available Message catalogs. Dynamic fallback to &#39;us-english&#39; is happening if no message catalog is available for the provided input locale. | 
**error_details** | **String** | Error details of the REST Exception.  | [optional] 
**requirements** | [**MFARequirementsResponse**](MFARequirementsResponse.md) |  | [optional] 

## Code Sample

```ruby
require 'IbmCloudIam'

instance = IbmCloudIam::OidcExceptionResponse.new(context: null,
                                 error_code: null,
                                 error_message: null,
                                 error_details: null,
                                 requirements: null)
```


