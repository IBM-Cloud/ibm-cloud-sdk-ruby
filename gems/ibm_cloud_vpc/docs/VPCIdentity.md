# IbmCloudVpc::VPCIdentity

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The unique identifier for this VPC | 
**crn** | **String** | The CRN for this VPC | 
**href** | **String** | The URL for this VPC | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::VPCIdentity.new(id: 4727d842-f94f-4a2d-824a-9bc9b02c523b,
                                 crn: crn:v1:bluemix:public:is:us-south:a/123456::vpc:4727d842-f94f-4a2d-824a-9bc9b02c523b,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/vpcs/4727d842-f94f-4a2d-824a-9bc9b02c523b)
```


