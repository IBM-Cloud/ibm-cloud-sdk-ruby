# IbmCloudVpc::EndpointGateway

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **DateTime** | The date and time that the endpoint gateway was created. | 
**crn** | **String** | The CRN for this endpoint gateway | 
**health_state** | [**HealthState**](HealthState.md) |  | 
**href** | **String** | The URL for this endpoint gateway | 
**id** | **String** |  | 
**ips** | [**Array&lt;ReservedIPReference&gt;**](ReservedIPReference.md) | Collection of reserved IPs bound to an endpoint gateway | 
**lifecycle_state** | [**LifecycleState**](LifecycleState.md) |  | 
**name** | **String** | The unique user-defined name for this endpoint gateway. | 
**resource_group** | [**ResourceGroupReference**](ResourceGroupReference.md) |  | 
**resource_type** | **String** | The type of resource referenced | 
**service_endpoint** | **String** | The fully qualified domain name for the target service | [optional] 
**service_endpoints** | **Array&lt;String&gt;** | Collection of fully qualified domain names for the target service | 
**target** | [**EndpointGatewayTarget**](EndpointGatewayTarget.md) |  | 
**vpc** | [**VPCReference**](VPCReference.md) |  | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::EndpointGateway.new(created_at: null,
                                 crn: crn:v1:bluemix:public:is:us-south:a/123456::endpoint-gateway:d7cc5196-9864-48c4-82d8-3f30da41fcc5,
                                 health_state: null,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/endpoint_gateways/d7cc5196-9864-48c4-82d8-3f30da41fcc5,
                                 id: null,
                                 ips: null,
                                 lifecycle_state: null,
                                 name: my-endpoint-gateway,
                                 resource_group: null,
                                 resource_type: null,
                                 service_endpoint: my-cloudant-instance.appdomain.cloud,
                                 service_endpoints: null,
                                 target: null,
                                 vpc: null)
```


