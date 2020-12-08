# IbmCloudVpc::EndpointGatewayReservedIP

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The unique identifier for this reserved IP | 
**href** | **String** | The URL for this reserved IP | 
**auto_delete** | **Boolean** | If set to &#x60;true&#x60;, this reserved IP will be automatically deleted when the target is deleted or when the reserved IP is unbound. | [optional] [default to true]
**name** | **String** | The user-defined name for this reserved IP. If not specified, the name will be a hyphenated list of randomly-selected words. Names must be unique within the subnet the reserved IP resides in. Names beginning with &#x60;ibm-&#x60; are reserved for provider-owned resources. | [optional] 
**subnet** | [**SubnetIdentity**](SubnetIdentity.md) |  | 

## Code Sample

```ruby
require 'IbmCloudVpc'

instance = IbmCloudVpc::EndpointGatewayReservedIP.new(id: 6d353a0f-aeb1-4ae1-832e-1110d10981bb,
                                 href: https://us-south.iaas.cloud.ibm.com/v1/subnets/7ec86020-1c6e-4889-b3f0-a15f2e50f87e/reserved_ips/6d353a0f-aeb1-4ae1-832e-1110d10981bb,
                                 auto_delete: false,
                                 name: my-reserved-ip,
                                 subnet: null)
```


