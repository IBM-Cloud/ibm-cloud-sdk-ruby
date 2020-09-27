# IbmCloudResourceController::ResourceKeysList

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**next_url** | **String** | The URL for requesting the next page of results. | 
**resources** | [**Array&lt;ResourceKey&gt;**](ResourceKey.md) | A list of resource keys. | 
**rows_count** | **Integer** | The number of resource keys in &#x60;resources&#x60;. | 

## Code Sample

```ruby
require 'IbmCloudResourceController'

instance = IbmCloudResourceController::ResourceKeysList.new(next_url: null,
                                 resources: null,
                                 rows_count: null)
```


