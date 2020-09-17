# IbmCloudVpc::FloatingIPReference

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | **String** | The globally unique IP address | 
**crn** | **String** | The CRN for this floating IP | 
**href** | **String** | The URL for this floating IP | 
**id** | **String** | The unique identifier for this floating IP | 
**name** | **String** | The unique user-defined name for this floating IP | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::FloatingIPReference.new(address: 203.0.113.1,
                                 crn: crn:v1:bluemix:public:is:us-south-1:a/123456::floating-ip:39300233-9995-4806-89a5-3c1b6eb88689,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/floating_ips/39300233-9995-4806-89a5-3c1b6eb88689,
                                 id: 39300233-9995-4806-89a5-3c1b6eb88689,
                                 name: my-floating-ip)
```


