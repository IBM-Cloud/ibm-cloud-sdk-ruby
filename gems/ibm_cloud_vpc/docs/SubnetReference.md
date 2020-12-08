# IbmCloudVpc::SubnetReference

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**crn** | **String** | The CRN for this subnet | 
**deleted** | [**Deleted**](Deleted.md) |  | [optional] 
**href** | **String** | The URL for this subnet | 
**id** | **String** | The unique identifier for this subnet | 
**name** | **String** | The user-defined name for this subnet | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::SubnetReference.new(crn: crn:v1:bluemix:public:is:us-south-1:a/123456::subnet:7ec86020-1c6e-4889-b3f0-a15f2e50f87e,
                                 deleted: null,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/subnets/7ec86020-1c6e-4889-b3f0-a15f2e50f87e,
                                 id: 7ec86020-1c6e-4889-b3f0-a15f2e50f87e,
                                 name: my-subnet)
```


