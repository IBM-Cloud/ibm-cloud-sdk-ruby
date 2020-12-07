# IbmCloudResourceController::ResourceBindingsList

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**next_url** | **String** | The URL for requesting the next page of results. | 
**resources** | [**Array&lt;ResourceBinding&gt;**](ResourceBinding.md) | A list of resource bindings. | 
**rows_count** | **Integer** | The number of resource bindings in &#x60;resources&#x60;. | 

## Code Sample

```ruby
require 'IbmCloudResourceController'

instance = IbmCloudResourceController::ResourceBindingsList.new(next_url: null,
                                 resources: null,
                                 rows_count: null)
```


