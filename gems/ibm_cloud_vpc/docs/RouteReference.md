# IbmCloudVpc::RouteReference

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**deleted** | [**Deleted**](Deleted.md) |  | [optional] 
**href** | **String** | The URL for this route | 
**id** | **String** | The unique identifier for this route | 
**name** | **String** | The user-defined name for this route | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::RouteReference.new(deleted: null,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/vpcs/8e454ead-0db7-48ac-9a8b-2698d8c470a7/routes/1a15dca5-7e33-45e1-b7c5-bc690e569531,
                                 id: 1a15dca5-7e33-45e1-b7c5-bc690e569531,
                                 name: my-route-1)
```


