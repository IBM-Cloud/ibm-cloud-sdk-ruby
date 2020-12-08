# IbmCloudVpc::EndpointGatewayReference

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**crn** | **String** | The CRN for this endpoint gateway | 
**deleted** | [**Deleted**](Deleted.md) |  | [optional] 
**href** | **String** | The URL for this endpoint gateway | 
**id** | **String** |  | 
**name** | **String** | The unique user-defined name for this endpoint gateway. | 
**resource_type** | **String** | The type of resource referenced | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::EndpointGatewayReference.new(crn: crn:v1:bluemix:public:is:us-south:a/123456::endpoint-gateway:d7cc5196-9864-48c4-82d8-3f30da41fcc5,
                                 deleted: null,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/endpoint_gateways/d7cc5196-9864-48c4-82d8-3f30da41fcc5,
                                 id: null,
                                 name: my-endpoint-gateway,
                                 resource_type: null)
```


