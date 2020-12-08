# IbmCloudVpc::LoadBalancerProfile

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**family** | **String** | The product family this load balancer profile belongs to | 
**href** | **String** | The URL for this load balancer profile | 
**logging_supported** | [**LoadBalancerProfileLoggingSupported**](LoadBalancerProfileLoggingSupported.md) |  | 
**name** | **String** | The globally unique name for this load balancer profile | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::LoadBalancerProfile.new(family: network,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/load_balancer/profiles/network-fixed,
                                 logging_supported: null,
                                 name: network-fixed)
```


