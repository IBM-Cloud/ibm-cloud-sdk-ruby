# IbmCloudVpc::EndpointGatewayTargetPrototype

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**resource_type** | **String** | The type of target for this endpoint gateway. | 
**crn** | **String** | The CRN for this provider cloud service, or the CRN for the user&#39;s instance of a provider cloud service. | 
**name** | **String** | The name of a provider infrastructure service. Must be: - &#x60;ibm-ntp-server&#x60;: An NTP (Network Time Protocol) server provided by IBM | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::EndpointGatewayTargetPrototype.new(resource_type: provider_cloud_service,
                                 crn: crn:v1:bluemix:public:cloudant:us-south:a/123456:3527280b-9327-4411-8020-591092e60353::,
                                 name: ibm-ntp-server)
```


