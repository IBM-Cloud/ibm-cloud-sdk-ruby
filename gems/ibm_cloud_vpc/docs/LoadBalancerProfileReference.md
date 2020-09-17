# IbmCloudVpc::LoadBalancerProfileReference

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**family** | **String** | The product family this load balancer profile belongs to | 
**href** | **String** | The URL for this load balancer profile | 
**name** | **String** | The name for this load balancer profile | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::LoadBalancerProfileReference.new(family: network,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/load_balancer/profiles/network-fixed,
                                 name: network-fixed)
```


