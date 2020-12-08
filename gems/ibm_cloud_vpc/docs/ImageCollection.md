# IbmCloudVpc::ImageCollection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first** | [**PageLink**](PageLink.md) | A link to the first page of resources | 
**images** | [**Array&lt;Image&gt;**](Image.md) | Collection of images | 
**limit** | **Integer** | The maximum number of resources that can be returned by the request | 
**_next** | [**PageLink**](PageLink.md) | A link to the next page of resources. This property is present for all pages except the last page | [optional] 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::ImageCollection.new(first: null,
                                 images: null,
                                 limit: 20,
                                 _next: null)
```


