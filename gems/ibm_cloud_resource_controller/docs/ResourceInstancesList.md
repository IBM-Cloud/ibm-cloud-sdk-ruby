# IbmCloudResourceController::ResourceInstancesList

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**next_url** | **String** | The URL for requesting the next page of results. | 
**resources** | [**Array&lt;ResourceInstance&gt;**](ResourceInstance.md) | A list of resource instances. | 
**rows_count** | **Integer** | The number of resource instances in &#x60;resources&#x60;. | 

## Code Sample

```ruby
require 'IbmCloudResourceController'

instance = IbmCloudResourceController::ResourceInstancesList.new(next_url: null,
                                 resources: null,
                                 rows_count: null)
```


