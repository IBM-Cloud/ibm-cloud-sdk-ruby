# IbmCloudVpc::FloatingIPTarget

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**deleted** | [**Deleted**](Deleted.md) |  | [optional] 
**href** | **String** | The URL for this public gateway | 
**id** | **String** | The unique identifier for this public gateway | 
**name** | **String** | The user-defined name for this public gateway | 
**primary_ipv4_address** | **String** | The primary IPv4 address | 
**resource_type** | **String** | The resource type | 
**crn** | **String** | The CRN for this public gateway | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::FloatingIPTarget.new(deleted: null,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/public_gateways/dc5431ef-1fc6-4861-adc9-a59d077d1241,
                                 id: dc5431ef-1fc6-4861-adc9-a59d077d1241,
                                 name: my-public-gateway,
                                 primary_ipv4_address: 192.168.3.4,
                                 resource_type: null,
                                 crn: crn:v1:bluemix:public:is:us-south-1:a/123456::public-gateway:dc5431ef-1fc6-4861-adc9-a59d077d1241)
```


