# IbmCloudVpc::FloatingIP

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | **String** | The globally unique IP address | 
**created_at** | **DateTime** | The date and time that the floating IP was created | 
**crn** | **String** | The CRN for this floating IP | 
**href** | **String** | The URL for this floating IP | 
**id** | **String** | The unique identifier for this floating IP | 
**name** | **String** | The unique user-defined name for this floating IP | 
**resource_group** | [**ResourceGroupReference**](ResourceGroupReference.md) |  | 
**status** | **String** | The status of the floating IP | 
**target** | [**FloatingIPTarget**](FloatingIPTarget.md) |  | [optional] 
**zone** | [**ZoneReference**](ZoneReference.md) |  | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::FloatingIP.new(address: 203.0.113.1,
                                 created_at: null,
                                 crn: crn:v1:bluemix:public:is:us-south-1:a/123456::floating-ip:39300233-9995-4806-89a5-3c1b6eb88689,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/floating_ips/39300233-9995-4806-89a5-3c1b6eb88689,
                                 id: 39300233-9995-4806-89a5-3c1b6eb88689,
                                 name: my-floating-ip,
                                 resource_group: null,
                                 status: available,
                                 target: null,
                                 zone: null)
```


