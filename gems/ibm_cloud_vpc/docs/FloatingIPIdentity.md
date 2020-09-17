# IbmCloudVpc::FloatingIPIdentity

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The unique identifier for this floating IP | 
**crn** | **String** | The CRN for this floating IP | 
**href** | **String** | The URL for this floating IP | 
**address** | **String** | The globally unique IP address | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::FloatingIPIdentity.new(id: 39300233-9995-4806-89a5-3c1b6eb88689,
                                 crn: crn:v1:bluemix:public:is:us-south-1:a/123456::floating-ip:39300233-9995-4806-89a5-3c1b6eb88689,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/floating_ips/39300233-9995-4806-89a5-3c1b6eb88689,
                                 address: 203.0.113.1)
```


