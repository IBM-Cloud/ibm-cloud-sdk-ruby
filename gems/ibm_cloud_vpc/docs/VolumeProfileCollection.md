# IbmCloudVpc::VolumeProfileCollection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first** | [**VolumeProfileCollectionFirst**](VolumeProfileCollectionFirst.md) |  | 
**limit** | **Integer** | The maximum number of resources that can be returned by the request | 
**_next** | [**VolumeProfileCollectionNext**](VolumeProfileCollectionNext.md) |  | [optional] 
**profiles** | [**Array&lt;VolumeProfile&gt;**](VolumeProfile.md) | Collection of volume profiles | 
**total_count** | **Integer** | The total number of resources across all pages | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::VolumeProfileCollection.new(first: null,
                                 limit: 20,
                                 _next: null,
                                 profiles: null,
                                 total_count: 132)
```


