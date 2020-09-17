# IbmCloudVpc::ImageCollection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first** | [**ImageCollectionFirst**](ImageCollectionFirst.md) |  | 
**images** | [**Array&lt;Image&gt;**](Image.md) | Collection of images | 
**limit** | **Integer** | The maximum number of resources that can be returned by the request | 
**_next** | [**ImageCollectionNext**](ImageCollectionNext.md) |  | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::ImageCollection.new(first: null,
                                 images: null,
                                 limit: 20,
                                 _next: null)
```


