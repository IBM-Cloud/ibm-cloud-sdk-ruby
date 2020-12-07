# IbmCloudIam::ExceptionResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**context** | [**ResponseContext**](ResponseContext.md) |  | [optional] 
**status_code** | **String** | Error message code of the REST Exception.  | 
**errors** | [**Array&lt;Error&gt;**](Error.md) | List of errors that occured.  | 
**trace** | **String** | Unique ID of the requst.  | [optional] 

## Code Sample

```ruby
require 'IbmCloudIam'

instance = IbmCloudIam::ExceptionResponse.new(context: null,
                                 status_code: null,
                                 errors: null,
                                 trace: null)
```


