# IbmCloudVpc::PublicGatewayReference

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**crn** | **String** | The CRN for this public gateway | 
**href** | **String** | The URL for this public gateway | 
**id** | **String** | The unique identifier for this public gateway | 
**name** | **String** | The user-defined name for this public gateway | 
**resource_type** | **String** | The resource type | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::PublicGatewayReference.new(crn: crn:v1:bluemix:public:is:us-south-1:a/123456::public-gateway:dc5431ef-1fc6-4861-adc9-a59d077d1241,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/public_gateways/dc5431ef-1fc6-4861-adc9-a59d077d1241,
                                 id: dc5431ef-1fc6-4861-adc9-a59d077d1241,
                                 name: my-public-gateway,
                                 resource_type: null)
```


