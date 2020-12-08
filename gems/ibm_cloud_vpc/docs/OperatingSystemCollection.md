# IbmCloudVpc::OperatingSystemCollection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first** | [**PageLink**](PageLink.md) | A link to the first page of resources | 
**limit** | **Integer** | The maximum number of resources that can be returned by the request | 
**_next** | [**PageLink**](PageLink.md) | A link to the next page of resources. This property is present for all pages except the last page | [optional] 
**operating_systems** | [**Array&lt;OperatingSystem&gt;**](OperatingSystem.md) | Collection of operating systems | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::OperatingSystemCollection.new(first: null,
                                 limit: 20,
                                 _next: null,
                                 operating_systems: null)
```


