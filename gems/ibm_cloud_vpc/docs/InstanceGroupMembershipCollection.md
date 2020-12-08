# IbmCloudVpc::InstanceGroupMembershipCollection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first** | [**PageLink**](PageLink.md) | A link to the first page of resources | 
**limit** | **Integer** | The maximum number of resources that can be returned by the request | 
**memberships** | [**Array&lt;InstanceGroupMembership&gt;**](InstanceGroupMembership.md) | Collection of instance group memberships | 
**_next** | [**PageLink**](PageLink.md) | A link to the next page of resources. This property is present for all pages except the last page | [optional] 
**total_count** | **Integer** | The total number of resources across all pages | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::InstanceGroupMembershipCollection.new(first: null,
                                 limit: 20,
                                 memberships: null,
                                 _next: null,
                                 total_count: 132)
```


