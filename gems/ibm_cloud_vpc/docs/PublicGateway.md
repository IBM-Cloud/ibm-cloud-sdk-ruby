# IbmCloudVpc::PublicGateway

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **DateTime** | The date and time that the public gateway was created | 
**crn** | **String** | The CRN for this public gateway | 
**floating_ip** | [**AnyType**](AnyType.md) |  | 
**href** | **String** | The URL for this public gateway | 
**id** | **String** | The unique identifier for this public gateway | 
**name** | **String** | The user-defined name for this public gateway | 
**resource_group** | [**ResourceGroupReference**](ResourceGroupReference.md) |  | 
**resource_type** | **String** | The resource type | 
**status** | **String** | The status of the volume | 
**vpc** | [**VPCReference**](VPCReference.md) |  | 
**zone** | [**ZoneReference**](ZoneReference.md) |  | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::PublicGateway.new(created_at: null,
                                 crn: crn:v1:bluemix:public:is:us-south-1:a/123456::public-gateway:dc5431ef-1fc6-4861-adc9-a59d077d1241,
                                 floating_ip: null,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/public_gateways/dc5431ef-1fc6-4861-adc9-a59d077d1241,
                                 id: dc5431ef-1fc6-4861-adc9-a59d077d1241,
                                 name: my-public-gateway,
                                 resource_group: null,
                                 resource_type: null,
                                 status: available,
                                 vpc: null,
                                 zone: null)
```


