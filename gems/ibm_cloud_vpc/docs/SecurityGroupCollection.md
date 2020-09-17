# IbmCloudVpc::SecurityGroupCollection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first** | [**SecurityGroupCollectionFirst**](SecurityGroupCollectionFirst.md) |  | 
**limit** | **Integer** | The maximum number of resources that can be returned by the request | 
**_next** | [**SecurityGroupCollectionNext**](SecurityGroupCollectionNext.md) |  | [optional] 
**security_groups** | [**Array&lt;SecurityGroup&gt;**](SecurityGroup.md) | Collection of security groups | 
**total_count** | **Integer** | The total number of resources across all pages | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::SecurityGroupCollection.new(first: null,
                                 limit: 20,
                                 _next: null,
                                 security_groups: null,
                                 total_count: 132)
```


