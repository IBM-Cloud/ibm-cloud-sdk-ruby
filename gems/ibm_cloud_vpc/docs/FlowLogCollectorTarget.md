# IbmCloudVpc::FlowLogCollectorTarget

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**deleted** | [**Deleted**](Deleted.md) |  | [optional] 
**href** | **String** | The URL for this VPC | 
**id** | **String** | The unique identifier for this VPC | 
**name** | **String** | The unique user-defined name for this VPC | 
**resource_type** | **String** | The resource type | 
**crn** | **String** | The CRN for this VPC | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::FlowLogCollectorTarget.new(deleted: null,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/vpcs/4727d842-f94f-4a2d-824a-9bc9b02c523b,
                                 id: 4727d842-f94f-4a2d-824a-9bc9b02c523b,
                                 name: my-vpc,
                                 resource_type: null,
                                 crn: crn:v1:bluemix:public:is:us-south:a/123456::vpc:4727d842-f94f-4a2d-824a-9bc9b02c523b)
```


