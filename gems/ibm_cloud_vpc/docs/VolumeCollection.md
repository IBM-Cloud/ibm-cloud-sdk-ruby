# IbmCloudVpc::VolumeCollection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first** | [**VolumeCollectionFirst**](VolumeCollectionFirst.md) |  | 
**limit** | **Integer** | The maximum number of resources that can be returned by the request | 
**_next** | [**VolumeCollectionNext**](VolumeCollectionNext.md) |  | [optional] 
**volumes** | [**Array&lt;Volume&gt;**](Volume.md) | Collection of volumes | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::VolumeCollection.new(first: null,
                                 limit: 20,
                                 _next: null,
                                 volumes: null)
```


