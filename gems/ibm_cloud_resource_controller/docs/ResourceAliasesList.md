# IbmCloudResourceController::ResourceAliasesList

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**next_url** | **String** | The URL for requesting the next page of results. | 
**resources** | [**Array&lt;ResourceAlias&gt;**](ResourceAlias.md) | A list of resource aliases. | 
**rows_count** | **Integer** | The number of resource aliases in &#x60;resources&#x60;. | 

## Code Sample

```ruby
require 'IbmCloudResourceController'

instance = IbmCloudResourceController::ResourceAliasesList.new(next_url: null,
                                 resources: null,
                                 rows_count: null)
```


