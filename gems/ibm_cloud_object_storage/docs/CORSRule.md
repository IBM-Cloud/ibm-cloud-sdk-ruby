# IbmCloudObjectStorage::CORSRule

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allowed_headers** | **Array&lt;String&gt;** |  | [optional] 
**allowed_methods** | **Array&lt;String&gt;** |  | 
**allowed_origins** | **Array&lt;String&gt;** |  | 
**expose_headers** | **Array&lt;String&gt;** |  | [optional] 
**max_age_seconds** | **Integer** |  | [optional] 

## Code Sample

```ruby
require 'IbmCloudObjectStorage'

instance = IbmCloudObjectStorage::CORSRule.new(allowed_headers: null,
                                 allowed_methods: null,
                                 allowed_origins: null,
                                 expose_headers: null,
                                 max_age_seconds: null)
```


