# IbmCloudVpc::VolumeCollection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first** | [**PageLink**](PageLink.md) | A link to the first page of resources | 
**limit** | **Integer** | The maximum number of resources that can be returned by the request | 
**_next** | [**PageLink**](PageLink.md) | A link to the next page of resources. This property is present for all pages except the last page | [optional] 
**volumes** | [**Array&lt;Volume&gt;**](Volume.md) | Collection of volumes | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::VolumeCollection.new(first: null,
                                 limit: 20,
                                 _next: null,
                                 volumes: null)
```


