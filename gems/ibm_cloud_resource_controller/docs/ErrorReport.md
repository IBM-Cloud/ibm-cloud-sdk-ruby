# IbmCloudResourceController::ErrorReport

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**error_code** | **String** | The error code encountered. | [optional] 
**message** | **String** | The error message. | [optional] 
**status_code** | **String** | The status code. | [optional] 
**transaction_id** | **String** | The transaction-id of the request. | [optional] 

## Code Sample

```ruby
require 'IbmCloudResourceController'

instance = IbmCloudResourceController::ErrorReport.new(error_code: RC-CloudControllerErrorResponse,
                                 message: null,
                                 status_code: null,
                                 transaction_id: null)
```


