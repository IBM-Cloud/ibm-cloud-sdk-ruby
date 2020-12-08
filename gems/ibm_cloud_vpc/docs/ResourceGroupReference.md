# IbmCloudVpc::ResourceGroupReference

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**href** | **String** | The URL for this resource group | 
**id** | **String** | The unique identifier for this resource group | 
**name** | **String** | The user-defined name for this resource group | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::ResourceGroupReference.new(href: https://resource-controller.cloud.ibm.com/v2/resource_groups/fee82deba12e4c0fb69c3b09d1f12345,
                                 id: fee82deba12e4c0fb69c3b09d1f12345,
                                 name: my-resource-group)
```


