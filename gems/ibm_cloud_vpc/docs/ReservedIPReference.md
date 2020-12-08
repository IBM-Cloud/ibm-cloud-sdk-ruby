# IbmCloudVpc::ReservedIPReference

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**deleted** | [**Deleted**](Deleted.md) |  | [optional] 
**href** | **String** | The URL for this reserved IP | 
**id** | **String** | The unique identifier for this reserved IP | 
**name** | **String** | The user-defined or system-provided name for this reserved IP | 
**resource_type** | **String** | The resource type | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::ReservedIPReference.new(deleted: null,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/subnets/7ec86020-1c6e-4889-b3f0-a15f2e50f87e/reserved_ips/6d353a0f-aeb1-4ae1-832e-1110d10981bb,
                                 id: 6d353a0f-aeb1-4ae1-832e-1110d10981bb,
                                 name: my-reserved-ip,
                                 resource_type: null)
```


