# IbmCloudIam::ServiceIdList

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**context** | [**ResponseContext**](ResponseContext.md) |  | [optional] 
**offset** | **Integer** | The offset of the current page. | [optional] 
**limit** | **Integer** | Optional size of a single page. Default is 20 items per page. Valid range is 1 to 100 | [optional] 
**first** | **String** | Link to the first page. | [optional] 
**previous** | **String** | Link to the previous available page. If &#39;previous&#39; property is not part of the response no previous page is available. | [optional] 
**_next** | **String** | Link to the next available page. If &#39;next&#39; property is not part of the response no next page is available. | [optional] 
**serviceids** | [**Array&lt;ServiceId&gt;**](ServiceId.md) | List of service IDs based on the query paramters and the page size. The service IDs array is always part of the response but might be empty depending on the query parameter values provided. | 

## Code Sample

```ruby
require 'IbmCloudIam'

instance = IbmCloudIam::ServiceIdList.new(context: null,
                                 offset: null,
                                 limit: null,
                                 first: null,
                                 previous: null,
                                 _next: null,
                                 serviceids: null)
```


